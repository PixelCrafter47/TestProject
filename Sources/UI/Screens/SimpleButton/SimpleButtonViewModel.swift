import Foundation
import Combine

public final class SimpleButtonViewModel: ObservableObject {
    @Published public private(set) var buttonTapCount: Int = 0
    @Published public private(set) var displayText: String = "Нажмите на кнопку"
    
    public init() {}
    
    public func buttonTapped() {
        buttonTapCount += 1
        updateDisplayText()
    }
    
    private func updateDisplayText() {
        displayText = "Кнопка нажата \(buttonTapCount) раз"
    }
    
    public func resetCount() {
        buttonTapCount = 0
        displayText = "Нажмите на кнопку"
    }
} 