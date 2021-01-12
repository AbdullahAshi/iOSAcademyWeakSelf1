import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Done", style: .cancel, handler: { _ in
            self.doSomething()
        }))
        present(alert, animated: true, completion: nil)
    }
    
    private func doSomething() {
        
    }
    
    deinit {
        print("deinit \(self)")
    }

}

