//
//  ___FILEHEADER___
//
import UIKit

class ___VARIABLE_productName:identifier___ViewModel {
    
    // MARK: - Closures
    
    var textDidChange: ((String) -> Void)? {
        didSet {
            textDidChange?(myText)
        }
    }
    
    // MARK: - Properties
    
    private var myText: String {
        didSet {
            textDidChange?(myText)
        }
    }
    
    // MARK: - Initialization
    
    init() {
        myText = "Hello World!"
    }
    
    // MARK: - IBActions

    @IBAction func buttonPressed(_ sender: Any) {
        myText = "Button Pressed"
    }
}
