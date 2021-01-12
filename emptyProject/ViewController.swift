import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    foo = {
        self.getData(string: "some string", completion: { dataReturned in
            self.data = dataReturned
        })
    }
  }
    
    private var foo: (() -> Void)!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        foo()
    }
    
    private var data: Data?
    
    private func getData(string: String, completion: ((Data?) -> Void)) {
        let dataFromString = Data(string.utf8)
        completion(dataFromString)
    }
    
    deinit {
        print("instance released : \(self)")
    }

}

