import XCTest
@testable import TestProject

final class AnalyticsTests: XCTestCase {
    func testAnalyticsServiceIsSingleton() {
        // Given
        let instance1 = AnalyticsService.shared
        let instance2 = AnalyticsService.shared
        
        // Then
        XCTAssertTrue(instance1 === instance2)
    }
    
    func testTrackEventWithoutParameters() {
        // Given
        let service = AnalyticsService.shared
        let eventName = "test_event"
        
        // When
        service.trackEvent(eventName)
        
        // Then
        // В реальном приложении здесь была бы проверка отправки события
        // В данном случае просто проверяем, что код выполняется без ошибок
    }
    
    func testTrackEventWithParameters() {
        // Given
        let service = AnalyticsService.shared
        let eventName = "test_event"
        let parameters = ["key": "value"]
        
        // When
        service.trackEvent(eventName, parameters: parameters)
        
        // Then
        // В реальном приложении здесь была бы проверка отправки события с параметрами
        // В данном случае просто проверяем, что код выполняется без ошибок
    }
} 