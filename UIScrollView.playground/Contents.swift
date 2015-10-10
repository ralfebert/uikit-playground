import UIKit

let contentView = UIView(frame: CGRectMake(0, 0, 1000, 1000))
contentView.backgroundColor = UIColor.greenColor()
let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
scrollView.contentSize = CGSize(width: 1000, height: 1000)
scrollView.addSubview(contentView)
scrollView.flashScrollIndicators()
