import UIKit

class ViewController: UIViewController {
    
    var referenceToAlert: UIAlertController!

  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        referenceToAlert = alert // this refernce will cause a cycle and will require a weak self in handler
        alert.addAction(UIAlertAction(title: "Done", style: .cancel, handler: { _ in
            self.doSomething()
        }))
        present(alert, animated: true, completion: nil)
    }
    
    private func doSomething() {
        
    }
    
    deinit {
        print("instance released : \(self)")
    }

}

