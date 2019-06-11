import UIKit

class ListViewController: UITableViewController {
    
    func getThumbnailImage(_ index: Int) -> UIImage {
        let mvo = self.list[index]
        
        if let savedImage = mvo.thumbnailImage {
            return savedImage
        } else {
            let url: URL! = URL(string: mvo.thumbnail!)
            let imageData = try! Data(contentsOf: url)
            mvo.thumbnailImage = UIImage(data: imageData)
            
            return mvo.thumbnailImage!
        }
    }
    
    // 현재까지 읽어온 페이지 정보
    var page = 1


    // 테이블 뷰를 구성할 리스트 데이터
    lazy var list: [MovieVO] = { var datalist = [MovieVO]() return datalist }()
    
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
        
        NSLog("제목: \(row.title!), 호출된 행번호: \(indexPath.row)")
        
        // as! UITableViewCell => as! MovieCell 로 캐스팅 타입 변경
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! MovieCell
        
        // 데이터 소스에 저장된 값을 각 아울렛 변수에 할당
        cell.title?.text = row.title
        cell.desc?.text = row.description
        cell.opendate?.text = row.opendate
        cell.rating?.text = "\(row.rating!)"
        
        // UIImage 객체를 생성하여 아울렛 변수의 image 속성에 대입
        DispatchQueue.main.async(execute: {
            cell.thumbnail.image = self.getThumbnailImage(indexPath.row)
        })
        
        
        return cell
    }
    
    override func viewDidLoad() {
        // 영화차트 api를 호출한다
        self.callMovieAPI()
    }

    // 영화 차트 api를 호출해주는 메소드
    func callMovieAPI() {
        // 1. 호핀 api 호출을 위한 uri 생성
        let url = "http://swiftapi.rubypaper.co.kr:2029/hoppin/movies?version=1&page=\(page)&count=10&genreId=&order=releasedateasc"
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
                
                let url: URL! = URL(string: mvo.thumbnail!)
                let imageData = try! Data(contentsOf: url)
                mvo.thumbnailImage = UIImage(data:imageData)
                
                
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

