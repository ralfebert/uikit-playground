import UIKit

let progressView = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
progressView.progress = 50 / Float(100)

let coloredProgressView = UIProgressView(progressViewStyle: .Default)
coloredProgressView.progressTintColor = .redColor()
coloredProgressView.trackTintColor = .yellowColor()
coloredProgressView.progress = 0.25