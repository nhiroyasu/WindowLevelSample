import Cocoa

class WindowsAppCell: NSCollectionViewItem {

    @IBOutlet weak var iconImageView: NSImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    func set(image: NSImage?) {
        iconImageView.image = image
    }
    
}
