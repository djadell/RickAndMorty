import UIKit
@testable import Rick_Morty

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
    (button.gestureRecognizers?.first as? BindableGestureRecognizer)?.execute()
}
