import UIKit

class PlayCollectionViewController : UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "PlayCell")
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PlayCell", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.yellowColor()
        return cell
    }
    
}

let collectionViewController = PlayCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
collectionViewController.collectionView!.frame = CGRect(x: 0, y: 0, width: 300, height: 100)
collectionViewController.collectionView!.backgroundColor = UIColor.whiteColor()
