import AppKit
import WebKit

class DesktopLevelViewController: NSViewController {

    var webView: WallpaperWebView!

    init() {
        super.init(nibName: "DesktopLevelViewController", bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.setFrameSize(NSRect.fullScreen().size)
        configureWebView()
    }

    func configureWebView() {
        let configure = WKWebViewConfiguration()
        webView = .init(frame: .fullScreen(), configuration: configure)
        view.addSubview(webView)
        view.topAnchor.constraint(equalTo: webView.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: webView.bottomAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: webView.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: webView.rightAnchor).isActive = true
        webView.load(URLRequest(url: YouTubeEmbedUrl(id: "WuEH265pUy4", mute: true).url!))
    }
}
