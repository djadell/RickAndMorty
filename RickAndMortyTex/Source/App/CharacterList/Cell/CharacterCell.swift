import UIKit
import Kingfisher

final class CharacterCell: UICollectionViewCell {
    
    // MARK: UI
    private(set) lazy var ui: Ui = { Ui(self.contentView) }()
    
    // MARK: LifeCycle
    override func prepareForReuse() {
        ui.imageView.image = nil
        ui.nameLabel.text = nil
        ui.spinner.startSpinning()
    }
    
    override var isSelected: Bool {
        
        didSet {
            UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseOut, animations: {
                self.layer.zPosition = self.isSelected ? 1 : -1
                self.transform = self.isSelected ? CGAffineTransform(scaleX: 1.1, y: 1.1) : CGAffineTransform.identity
            }, completion: nil)
        }
        
    }
    
    // MARK: Public methods
    func configure(name: String, imagePath: String) {
        
        ui.nameLabel.text = name
        guard let imageURL = URL(string: imagePath) else { return }
        
        ui.spinner.isHidden = false
        ui.imageView.kf.setImage(with: imageURL) { [weak self] _ in
            self?.ui.spinner.stopAnimating()
            self?.ui.spinner.isHidden = true
        }
        
    }
    
}
