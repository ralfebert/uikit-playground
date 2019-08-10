import WebKit
import UIKit
import PlaygroundSupport

class WebViewController : UIViewController {

    override func loadView() {

        let webView = WKWebView()
        webView.loadHTMLString("<a href='http://www.example.com/'>Hello world</a>", baseURL: nil)

        self.view = webView
    }

}

PlaygroundPage.current.liveView = WebViewController()
