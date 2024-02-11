//
//  ___FILEHEADER___
//
import UIKit
import Combine

class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    
    // MARK: - UIViews / IBOutlets
    
    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Properties
    
    lazy var viewModel: ___VARIABLE_productName:identifier___ViewModel = {
        return ___VARIABLE_productName:identifier___ViewModel()
    }()
    
    var cancellables = Set<AnyCancellable>()
    
    // MARK: - Setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        setupViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func configureView() {
        // #warning Incomplete implementation, configure the views
        self.view.addSubview(myLabel)
        myLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    func setupViewModel() {
        viewModel.$mAllData.sink { [weak self] mData in
            DispatchQueue.main.async {
                self?.myLabel.text = mData?
                    .compactMap { $0.data }.joined(separator: ", ")
            }
        }.store(in: &cancellables)
        viewModel.fetchData()
    }
    
    // MARK: - Navigation
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
