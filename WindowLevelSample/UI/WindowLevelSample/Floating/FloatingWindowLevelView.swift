import Foundation
import AppKit
import WebKit

class FloatingWindowLevelView: NSView {
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        translatesAutoresizingMaskIntoConstraints = true
        autoresizingMask = [.height, .width]
        wantsLayer = true
        let webView = buildWebView()
        addSubview(webView)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func buildWebView() -> WKWebView {
        let webView = WKWebView(frame: .zero, configuration: .init())
        webView.translatesAutoresizingMaskIntoConstraints = true
        webView.autoresizingMask = [.height, .width]
        if let url = YouTubeEmbedUrl(id: "FT3ODSg1GFE", mute: true).url {
            webView.load(URLRequest(url: url))
        }
        return webView
    }
}
