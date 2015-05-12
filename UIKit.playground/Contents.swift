import UIKit

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
view.backgroundColor = UIColor.greenColor()


let contentView = UIView(frame: CGRectMake(0, 0, 1000, 1000))
contentView.backgroundColor = UIColor.greenColor()
let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
scrollView.contentSize = CGSize(width: 1000, height: 1000)
scrollView.addSubview(contentView)
scrollView.flashScrollIndicators()




let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
label.text = "Hello world!"
label.sizeToFit()

let buttonView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
let button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
button.setTitle("Button", forState: nil)
button.sizeToFit()
button.center = CGPoint(x: 100, y: 25)
button.tintColor = UIColor.redColor()
buttonView.addSubview(button)

let segmentedControl = UISegmentedControl(items: ["A", "B", "C"])

let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
textField.borderStyle = .RoundedRect
textField.text = "UITextField"
textField.sizeToFit()

let slider = UISlider()

let uiswitch = UISwitch()
uiswitch.on = true


let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .Gray)
activityIndicator.startAnimating()


let progressView = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
progressView.progress = 0.5


let pageControl = UIPageControl(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
pageControl.backgroundColor = UIColor.grayColor()
pageControl.numberOfPages = 3


let stepper = UIStepper()



class PlayTableViewController : UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        cell.textLabel?.text = "Cell \(indexPath.section).\(indexPath.row)"
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
}

let tableViewController = PlayTableViewController(style: UITableViewStyle.Plain)
tableViewController.tableView.frame = CGRect(x: 0, y: 0, width: 300, height: 100)



class PlayCollectionViewController : UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "PlayCell")
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PlayCell", forIndexPath: indexPath) as! UICollectionViewCell
        cell.backgroundColor = UIColor.yellowColor()
        return cell
    }
    
}

let collectionViewController = PlayCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
collectionViewController.collectionView!.frame = CGRect(x: 0, y: 0, width: 300, height: 100)
collectionViewController.collectionView!.backgroundColor = UIColor.whiteColor()

let imageData = NSData(contentsOfURL: NSURL(string: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAAAXNSR0IArs4c6QAAAaRJREFUKBWNUksvA1EUPmOmldJpItoiVdKoRkJUPKMWYmGFnYX4AxJh7Y8IO0srGyHCRkIiwaIisfLYePWhFrQ6tJ2O893p0LLgJHfuud/j3Ln3XIl+RxVDDh72EpXjWeNRLK3FJJUvOFe31j0L7UF52lkjhcBlssbl1bW+MTX7tMzLNLCKWFqsDR9se48zdz7jPdZcMYCdHTYcQWOZrB1VJnY7gkqkUCCKJ3Xy+xShuXsoUKNXJoWXp9H8yehkcpyJNM5TJX4voEQkSaLVtQxNzKSswiIHBq4vbBuCFh5xETiTopibe9wyed2AzUAODAENtJw6oK67v2i6ddfLTpAIXTdIls1C5Tm41LOeae6KtXyXZjDxpNPLa/HLBCEKAANXHjDmcOXR8xz1jyUoq1W0S2iBhQZiBA208MCooU/dnTZq9csU6InT1U1eGPBBDizUZiNooIXHEqjoofboMwZ77QaDFWN4wG6AQy+ZU2Eym8V92dl7m3O5nCv7m55IMlWko5MP8DQyVC1uGT1kzTxD4vVYD0CI+PPvJ/fTiAI495+P/BOweL+uo+mRyAAAAABJRU5ErkJggg==")!)
let image = UIImage(data: imageData!)
let imageView = UIImageView(image: image)



let textView = UITextView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
textView.text = "UITextView"
textView.sizeToFit()



let webView = UIWebView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
webView.loadHTMLString("<i>Hello world</i>", baseURL: nil)
// FIXME: is there a way to display the rendered HTML in a playground?



let datePicker = UIDatePicker()
datePicker.datePickerMode = UIDatePickerMode.Date
// FIXME: Picker display seems broken in Playgrounds



class PlayPickerData : NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    let fruits = ["Apple", "Orange", "Banana"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return fruits[row]
    }
}

let pickerData = PlayPickerData()
let pickerView = UIPickerView()
pickerView.dataSource = pickerData
pickerView.delegate = pickerData
// FIXME: Picker display seems broken in Playgrounds
