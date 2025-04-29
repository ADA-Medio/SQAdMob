import Testing
@testable import SQAdMob

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    
    let service: SQAdMobService = SQAdServiceFactory.makeAdMobService()
    await service.setup()
}
