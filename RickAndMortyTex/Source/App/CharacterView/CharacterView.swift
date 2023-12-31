import UIKit
import Kingfisher

final class CharacterView: UIViewController, BindableView {
    
    // MARK: Private members
    private(set) lazy var ui = { Ui(self.view) }()
    
    // MARK: Initializer
    init(input: CharacterModel) {
        super.init(nibName: nil, bundle: nil)
        bindInput(input)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        title = "Common_nav_bar_title".localized
    }
    
    // MARK: Public interface
    func bindInput(_ input: CharacterModel) {
        
        sink(input.$character) { [weak self] character in
            self?.configure(character)
        }
        
    }
    
    // MARK: Public methods
    private func configure(_ character: Character) {
        
        ui.imageView.kf.setImage(with: URL(string: character.image))
        ui.nameLabel.text = character.name
        ui.statusValue.text = character.status.rawValue.localized
        ui.speciesValue.text = character.species
        ui.genderValue.text = character.gender.rawValue.localized
        ui.createdValue.text = character.created.noTimeFormat
        
        switch character.status {
        case .alive:
            ui.background.image = Image.aliveBackground.image
        case .dead:
            ui.background.image = Image.deadBackground.image
        case .unknown:
            break // No background image
        }
        
    }
    
}

