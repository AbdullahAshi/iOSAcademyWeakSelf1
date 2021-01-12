import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
//    var foo: (() -> Void)!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        foo()
    }
    
    private var data: Data?
    
    private func getData(string: String, completion: ((Data?) -> Void)) {
        let dataFromString = Data(string.utf8)
        completion(dataFromString)
    }
    
    func foo() {
        getData(string: "some string", completion: { dataReturned in
            self.data = dataReturned
        })
    }
    
    deinit {
        print("instance released : \(self)")
    }

}

