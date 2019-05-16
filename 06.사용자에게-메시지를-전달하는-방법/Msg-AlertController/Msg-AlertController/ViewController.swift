import UIKit

class ViewController: UIViewController {

    @IBOutlet var result: UILabel!
    
    @IBAction func alert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "default", style: .default) { (_) in self.result.text = "selected default"}
        let cancel = UIAlertAction(title: "cancel", style: .cancel) { (_) in self.result.text = "selected cancel"}
        let caution = UIAlertAction(title: "destructive", style: .destructive) { (_) in self.result.text = "selected destructive"}
        
        alert.addAction(ok)
        alert.addAction(cancel)
    alert.addAction(caution)
        
        self.present(alert, animated: false)
        
    }
    
    @IBAction func actionSheet(_ sender: Any) {
        
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "default", style: .default) { (_) in self.result.text = "selected default"}
        let cancel = UIAlertAction(title: "cancel", style: .cancel) { (_) in self.result.text = "selected cancel"}
        let caution = UIAlertAction(title: "destructive", style: .destructive) { (_) in self.result.text = "selected destructive"}
        
        alert.addAction(ok)
        alert.addAction(cancel)
        alert.addAction(caution)
        
        self.present(alert, animated: false)
        
    }
    
    
    @IBAction func login(_ sender: Any) {
        
        let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "default", style: .default) { (_) in
            if let tf = alert.textFields?[0] {
                print("\(tf.text!)")
            } else {
                print("no value")
            }
        }
        let cancel = UIAlertAction(title: "cancel", style: .cancel)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "password"
            tf.isSecureTextEntry = true
        
        })
        
        self.present(alert, animated: false)
        
    }
    
    @IBAction func auth(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "login", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "cancel", style: .default)
        let ok = UIAlertAction(title: "확인", style: .default) { (_) in
            let loginId = alert.textFields?[0].text
            let loginPw = alert.textFields?[1].text
            
            if loginId == "abcd" && loginPw == "1234" {
                self.result.text = ("인증되었습니다")
            } else {
                self.result.text = ("인증에 실패하였습니다")
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "id"
            tf.isSecureTextEntry = false
        })
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "password"
            tf.isSecureTextEntry = true
        })
        
        self.present(alert, animated: false)
        
    }
    
    
    
}

