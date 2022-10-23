import Cocoa

class DockWindowLevelViewController: NSViewController {
    enum Section {
        case app
    }

    enum App: CaseIterable {
        case windows
        case search
        case explorer
        case edge
        case store

        var image: NSImage? {
            switch self {
            case .windows: return NSImage(named: "Windows11")
            case .search: return NSImage(named: "Windows11_Search")
            case .explorer: return NSImage(named: "Windows11_Explorer")
            case .edge: return NSImage(named: "Windows11_Edge")
            case .store: return NSImage(named: "Windows11_Store")
            }
        }
    }

    init(frame: NSRect) {
        super.init(nibName: "DockWindowLevelViewController", bundle: nil)
        view.setFrameSize(frame.size)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    @IBOutlet weak var collectionView: NSCollectionView!
    var dataSource: NSCollectionViewDiffableDataSource<Section, App>!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        collectionView.collectionViewLayout = CollectionViewLayout.horizontalList()
        dataSource = .init(collectionView: collectionView, itemProvider: { collectionView, indexPath, app in
            let cell = collectionView.dequeueItem(Type: WindowsAppCell.self, for: indexPath)
            cell.set(image: app.image)
            return cell
        })
        collectionView.dataSource = dataSource

        var snapshot = NSDiffableDataSourceSnapshot<Section, App>()
        snapshot.appendSections([.app])
        snapshot.appendItems(App.allCases, toSection: .app)
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
}
