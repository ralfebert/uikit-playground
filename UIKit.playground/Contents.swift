import UIKit
import XCPlayground

let webView = UIWebView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
webView.loadHTMLString("<i>Hello world</i>", baseURL: nil)

// Show in playground timeline
import XCPlayground
XCPShowView("WebView", view: webView)