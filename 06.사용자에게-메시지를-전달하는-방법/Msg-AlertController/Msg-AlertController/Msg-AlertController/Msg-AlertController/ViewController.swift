import UIKit

class ViewController: UIViewController {

    @IBOutlet var result: UILabel!
    
    
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "default", style: .default)
        let cancel = UIAlertAction(title: "cancel", style: .cancel)
        let caution = UIAlertAction(title: "destructive", style: .destructive, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)
        
        
    }
    
    
    @IBAction func actionSheet(_ sender: Any) {
    }
    
}

