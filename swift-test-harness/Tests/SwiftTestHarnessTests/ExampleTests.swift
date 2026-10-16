#if canImport(Testing)
import Testing
import Prometheus

@Suite("Prometheus Swift Export Tests")
struct PrometheusExportTests {
    @Test("Prometheus swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Prometheus swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Prometheus

final class PrometheusExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Prometheus swift module imported cleanly")
    }
}
#endif
