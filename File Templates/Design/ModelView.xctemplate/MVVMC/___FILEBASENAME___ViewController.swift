//
//  ___FILEHEADER___
//
import UIKit

class ___VARIABLE_productName:identifier___Controller: UIViewController {
    
    // MARK: - UIViews / IBOutlets
    
    @IBOutlet private weak var myLabel: UILabel?
    @IBOutlet private weak var myButton: UIButton?
    
    // MARK: - Properties

    private(set) var viewModel: ___VARIABLE_productName:identifier___ViewModel
    private(set) var model: ___VARIABLE_productName:identifier___Model = .init()


    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewModel()
    }

    func configureViewModel() {
        viewModel.textDidChange = { [weak self] (text: String) in
            self?.model.textData = text
            self?.myLabel?.text = text
        }
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

