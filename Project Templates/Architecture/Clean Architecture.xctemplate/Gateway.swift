//___FILEHEADER___
import Foundation

class MyGateway: Gateway {
    private let datasource: Datasource
    
    init(datasource: Datasource) {
        self.datasource = datasource
    }
}
