//
//  ___FILEHEADER___
//

import Foundation

protocol ___VARIABLE_productName:identifier___Boundary {
    func response(_ output: Result<___VARIABLE_productName:identifier___Output, Error>)
}

class ___VARIABLE_productName:identifier___UseCase {

    func execute(request: ___VARIABLE_productName:identifier___Input, callback: ___VARIABLE_productName:identifier___Boundary) {
        callback.response(.success(___VARIABLE_productName:identifier___Output()))
    }

}

