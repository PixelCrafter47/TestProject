import XCTest
import SwiftUI
@testable import TestProject

final class CounterTests: XCTestCase {
    func testCounterViewModelIncrements() {
        // Given
        let viewModel = CounterViewModel()
        
        // When
        viewModel.increment()
        
        // Then
        XCTAssertEqual(viewModel.count, 1)
    }
    
    func testMultipleIncrements() {
        // Given
        let viewModel = CounterViewModel()
        let numberOfIncrements = 5
        
        // When
        for _ in 0..<numberOfIncrements {
            viewModel.increment()
        }
        
        // Then
        XCTAssertEqual(viewModel.count, numberOfIncrements)
    }
} 