//___FILEHEADER___
import Foundation

protocol UseCaseInput {
    func execute(request: SimpleInputModel, callback: SimpleOutputBoundary)
}

protocol SimpleOutputBoundary {
    func response(output: Callback<SimpleOutputModel>)
}

internal struct SimpleInputModel {
    let email: String
    let password: String
}

internal struct SimpleOutputModel {
    let userId: Int32
}

protocol Gateway {}

class UseCase: UseCaseInput {
    let gateway: Gateway

    init(gateway: Gateway) {
        self.gateway = gateway
    }
}

extension UseCase {
    func execute(request: SimpleInputModel, callback: SimpleOutputBoundary) {
        callback.response(output: .onResponse(SimpleOutputModel(userId: 1)))
    }
}

