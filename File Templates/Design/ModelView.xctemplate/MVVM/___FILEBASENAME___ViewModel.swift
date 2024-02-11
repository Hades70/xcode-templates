//
//  ___FILEHEADER___
//
import Foundation

class ___VARIABLE_productName:identifier___ViewModel {

    // MARK: - Properties
    
    @Published
    private(set) var mAllData: [___VARIABLE_productName:identifier___Model]!
    
    // MARK: - Initialize
    
    init() {
        self.mAllData = .init()
    }

    // MARK: - Constructor
    
    convenience init(data: [NewDataModel]) {
        self.init()
    }
    
    // MARK: - Fetching functions
    
    func fetchData() {
        self.mAllData.append(.init("hello"))
        self.mAllData.append(.init(", world!"))
    }
}
