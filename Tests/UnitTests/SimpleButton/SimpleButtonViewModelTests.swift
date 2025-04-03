import XCTest
@testable import NetworkRadar

final class SimpleButtonViewModelTests: XCTestCase {
    var sut: SimpleButtonViewModel!
    
    override func setUp() {
        super.setUp()
        sut = SimpleButtonViewModel()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testInitialState() {
        XCTAssertEqual(sut.buttonTapCount, 0)
        XCTAssertEqual(sut.displayText, "Нажмите на кнопку")
    }
    
    func testButtonTapped() {
        // When
        sut.buttonTapped()
        
        // Then
        XCTAssertEqual(sut.buttonTapCount, 1)
        XCTAssertEqual(sut.displayText, "Кнопка нажата 1 раз")
        
        // When tapped again
        sut.buttonTapped()
        
        // Then
        XCTAssertEqual(sut.buttonTapCount, 2)
        XCTAssertEqual(sut.displayText, "Кнопка нажата 2 раз")
    }
    
    func testResetCount() {
        // Given
        sut.buttonTapped()
        XCTAssertEqual(sut.buttonTapCount, 1)
        
        // When
        sut.resetCount()
        
        // Then
        XCTAssertEqual(sut.buttonTapCount, 0)
        XCTAssertEqual(sut.displayText, "Нажмите на кнопку")
    }
} 