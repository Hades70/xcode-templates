//___FILEHEADER___
import UIKit

class UIPresenter {
    private(set) weak var view: UIView?
    
    init(view: UIView) {
        self.view = view
    }
}

class Presenter: UIPresenter, SimpleOutputBoundary {
    public func response(output: Callback<SimpleOutputModel>) {
        guard let label = self.view as? UILabel else { return }
        
        if case let .onResponse(data) = output {
            label.text = "user id: \(data.userId)"
        }
        else if case let .onError(error) = output {
            label.text = "error: \(error.localizedDescription)"
        }
    }
}
