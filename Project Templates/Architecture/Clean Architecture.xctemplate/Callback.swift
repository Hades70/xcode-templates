//___FILEHEADER___
import Foundation

enum Callback<R> {
    case onResponse(R)
    case onError(Error)
}
