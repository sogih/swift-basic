import UIKit

class ListViewController: UITableViewController {
    
    // 현재까지 읽어온 페이지 정보
    var page = 1
    
//    // 튜플 아이템으로 구성된 데이터 세트
//    var dataset = [
//        ("다크나이트", "영웅들에 철학에 음악까지 더해져 예술이 되다.", "2008-09-04", 8.95, "darknight.jpg"),
//        ("호우시절", "때를 알고 내리는 좋은 비", "2009-10-08", 7.31, "rain.jpg"),
//        ("말할 수 없는 비밀", "여기서 너까지 다섯 걸음", "2015-05-07", 9.19, "secret.jpg")
//    ]

    // 테이블 뷰를 구성할 리스트 데이터
    lazy var list: [MovieVO] = {
        var datalist = [MovieVO]()  // array
//        for (title, desc, opendate, rating, thumbnail) in self.dataset {
//            let mvo = MovieVO()
//            mvo.title = title
//            mvo.description = desc
//            mvo.opendate = opendate
//            mvo.rating = rating
//            mvo.thumbnail = thumbnail
//            datalist.append(mvo)
//        }
        return datalist
    }()
    
    @IBOutlet var moreBtn: UIButton!
    
    // more 버튼을 눌렀을 때 호출되는 메소드
    @IBAction func more(_ sender: Any) {
        // 0. 현재 페이지 값에 1을 추가
        self.page += 1
        // 영화차트 api를 호출한다
        self.callMovieAPI()
        // 데이터를 다시 읽어오도록 테이블 뷰를 갱신한다
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 주어진 행에 맞는 데이터 소스를 읽어온다
        let row = self.list[indexPath.row]
        
        // as! UITableViewCell => as! MovieCell 로 캐스팅 타입 변경
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! MovieCell
        
        // 데이터 소스에 저장된 값을 각 아울렛 변수에 할당
        cell.title?.text = row.title
        cell.desc?.text = row.description
        cell.opendate?.text = row.opendate
        cell.rating?.text = "\(row.rating!)"
        
        // 섬네일 경로를 인자값으로 하는 URL 객체를 생성
        let url: URL! = URL(string: row.thumbnail!)
        
        // 이미지를 읽어와 Data 객체에 저장
        let imageData = try! Data(contentsOf: url)
        
        // UIImage 객체를 생성하여 아울렛 변수의 image 속성에 대입
        cell.thumbnail?.image = UIImage(data:imageData)
        
        
        return cell
    }
    
    override func viewDidLoad() {
        // 영화차트 api를 호출한다
        self.callMovieAPI()
    }

    // 영화 차트 api를 호출해주는 메소드
    func callMovieAPI() {
        // 1. 호핀 api 호출을 위한 uri 생성
        let url = "http://swiftapi.rubypaper.co.kr:2029/hoppin/movies?version=1&page=1&count=10&genreId=&order=releasedateasc"
        let apiURI : URL! = URL(string: url)
        
        // 2. rest api 호출
        let apidata = try! Data(contentsOf: apiURI)
        
        // 3. json 객체를 파싱하여 NSDictionary 객체로 반환
        do {
            let apiDictionary = try JSONSerialization.jsonObject(with: apidata, options: []) as! NSDictionary
            
            // 4. 데이터 구조에 따라 차례대로 캐스팅하며 읽어온다
            let hoppin = apiDictionary["hoppin"] as! NSDictionary
            let movies = hoppin["movies"] as! NSDictionary
            let movie = movies["movie"] as! NSArray
            
            // 5. Iterator 처리를 하면서 api 데이터를 MovieVO 객체에 저장한다
            for row in movie {
                // 순회 상수를 NSDictionary 타입으로 캐스팅
                let r = row as! NSDictionary
                
                // 테이블 뷰 리스트를 구성할 데이터 형식
                let mvo = MovieVO()
                
                // movie 배열의 각 데이터를 mvo 상수의 속성에 대입
                mvo.title = r["title"] as? String
                mvo.description = r["genreNames"] as? String
                mvo.thumbnail = r["thumbnailImage"] as? String
                mvo.detail = r["linkUrl"] as? String
                mvo.rating = ((r["ratingAverage"] as! NSString).doubleValue)
                
                // list 배열에 추가
                self.list.append(mvo)
                
            }
            
            // 6. 전체 데이터 카운트를 얻는다
            let totalCount = (hoppin["totalCount"] as? NSString)!.integerValue
            
            // 7. totalCount가 읽어온 데이터 크기와 같거나 클 경우 더보기 버튼을 막는다
            if (self.list.count >= totalCount) {
                self.moreBtn.isHidden = true
            }
        } catch {
            NSLog("Parse Error!!")
        }
    }
    
}

