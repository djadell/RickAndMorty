import XCTest
@testable import Rick_Morty

final class CharacterCellTests: XCTestCase {

    func test_configure_shouldConfigureLabel() {
        let sut = CharacterCell()
        sut.configure(name: "NameTest", imagePath: "")
        XCTAssertEqual(sut.ui.nameLabel.text, "NameTest")
    }

}
