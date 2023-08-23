@testable import Rick_Morty

final class MockAppNavigatior: IAppNavigator {
    
    var navigatedToCharacterView = false
    
    func toCharacterDetailView(_ character: Rick_Morty.Character) {
        navigatedToCharacterView = true
    }
    
}
