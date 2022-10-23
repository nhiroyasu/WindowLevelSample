import Cocoa

class ExecuteSampleCell: NSCollectionViewItem {
    @IBOutlet weak var titleLabel: NSTextField!
    private var onTapSeeHandler: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }


    func set(title: String, color: NSColor, onTapSeeHandler: @escaping () -> Void) {
        titleLabel.stringValue = title
        titleLabel.textColor = color
        self.onTapSeeHandler = onTapSeeHandler
    }

    @IBAction func didTapSeeButton(_ sender: Any?) {
        onTapSeeHandler?()
    }
}
