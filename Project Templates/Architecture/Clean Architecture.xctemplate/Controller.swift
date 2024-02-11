//
//  ___FILEHEADER___
//
import UIKit

class Controller: UIViewController {
    
    var myLabel : UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myLabel)
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let datasource = Datastore()
        let repo = MyGateway(datasource: datasource)
        let usecase = UseCase(gateway: repo)
        let presenter = Presenter(view: myLabel)
        
        usecase.execute(
            request: .init(email: "email@email.com", password: "password"),
            callback: presenter
        )
    }
    
}
