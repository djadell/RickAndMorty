import XCTest
@testable import Rick_Morty

final class MockCharacterListController: CharacterListInput {
    
    var isLoadNextPageCalled = false
    var characterSelected: Character?
    
    func onLoadNextPage() {
        isLoadNextPageCalled = true
    }
    
    func onCharacterSelected(_ character: Character) {
        characterSelected = character
    }
    
}
