import XCTest

final class SimpleButtonUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    func testButtonTapUpdatesText() {
        let tapButton = app.buttons["tapButton"]
        let displayText = app.staticTexts["displayText"]
        
        // Проверяем начальное состояние
        XCTAssertEqual(displayText.label, "Нажмите на кнопку")
        
        // Нажимаем кнопку
        tapButton.tap()
        
        // Проверяем обновленный текст
        XCTAssertEqual(displayText.label, "Кнопка нажата 1 раз")
        
        // Нажимаем еще раз
        tapButton.tap()
        XCTAssertEqual(displayText.label, "Кнопка нажата 2 раз")
    }
    
    func testResetButtonResetsCounter() {
        let tapButton = app.buttons["tapButton"]
        let resetButton = app.buttons["resetButton"]
        let displayText = app.staticTexts["displayText"]
        
        // Нажимаем основную кнопку
        tapButton.tap()
        XCTAssertEqual(displayText.label, "Кнопка нажата 1 раз")
        
        // Нажимаем кнопку сброса
        resetButton.tap()
        
        // Проверяем, что текст вернулся к исходному
        XCTAssertEqual(displayText.label, "Нажмите на кнопку")
    }
} 