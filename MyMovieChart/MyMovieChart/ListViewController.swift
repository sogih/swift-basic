import UIKit

class ListViewController: UITableViewController {

    var list = [MovieVO]()
    
    override func viewDidLoad() {
        
        var mvo = MovieVO()
        mvo.title = "U ri Sunhi"
        mvo.description = "A young woman returning to her old school to visit her professor also runs into her old boyfriend and her senior, each of whom has a past with her."
        mvo.opendate = "2013"
        mvo.rating = 6.8
        self.list.append(mvo)
        
        mvo = MovieVO()
        mvo.title = "Hahaha"
        mvo.description = "Two friends, while having drinks together, share their memories of visiting the seaside resort of Tongyeong."
        mvo.opendate = "2010"
        mvo.rating = 6.7
        self.list.append(mvo)
        
        mvo = MovieVO()
        mvo.title = "The Day He Arrives"
        mvo.description = "A professor in the film department at a provincial university goes to Seoul to meet his senior, who works as a film critic, and stays in a northern Seoul village for three days."
        mvo.opendate = "2011"
        mvo.rating = 7.0
        self.list.append(mvo)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell")!
        cell.textLabel?.text = row.title
        cell.detailTextLabel?.text = row.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
