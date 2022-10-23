import Cocoa

class ViewController: NSViewController {

    typealias DiffableDataSource = NSCollectionViewDiffableDataSource<Section, SampleContent>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, SampleContent>

    let sampleList = SampleListRepository().getSampleList()

    enum Section {
        case content
    }

    @IBOutlet weak var collectionView: NSCollectionView!
    private var dataSource: DiffableDataSource! = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(Type: ExecuteSampleCell.self)
        collectionView.collectionViewLayout = CollectionViewLayout.list()
        configureDataSource()
        configureObserver()
    }

    func configureObserver() {
        _ = NotificationCenter.default.addObserver(forName: .closeAll, object: nil, queue: .main) { _ in
            self.closeAll(nil)
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    private func configureDataSource() {
        dataSource = DiffableDataSource(collectionView: collectionView, itemProvider: { collectionView, indexPath, content in
            let cell = collectionView.dequeueItem(Type: ExecuteSampleCell.self, for: indexPath)
            cell.set(
                title: content.pattern.displayString,
                color: content.pattern.levelColor,
                onTapSeeHandler: content.executer.execute
            )
            return cell
        })

        var snapshot = Snapshot()
        snapshot.appendSections([.content])
        snapshot.appendItems(sampleList, toSection: .content)
        dataSource.apply(snapshot, animatingDifferences: true)
    }

    func closeAll(_ sender: Any?) {
        sampleList.forEach {
            $0.executer.clear()
        }
    }
}

