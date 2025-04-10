import Foundation

protocol AnalyticsServiceProtocol {
    func trackEvent(_ name: String, parameters: [String: Any]?)
}

final class AnalyticsService: AnalyticsServiceProtocol {
    static let shared = AnalyticsService()
    
    private init() {}
    
    func trackEvent(_ name: String, parameters: [String: Any]? = nil) {
        print("📊 Analytics Event: \(name)")
        if let parameters = parameters {
            print("Parameters: \(parameters)")
        }
    }
}

class a {
  static var a = 3
}
