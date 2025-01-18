//
//  ViewController.swift
//  CollectionViewWithXIB
//
//  Created by Mac on 17/01/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    
    var fruitsImages : [String] = ["Apple","Banana","Cherry","Fig","Grapes","Guava","Kiwi","Mango","Orange","Pear","Pomegranate","Strawberry","Watermelon","Apple","Banana","Cherry","Fig","Grapes","Guava","Kiwi","Mango","Orange","Pear","Pomegranate","Strawberry","Watermelon"]
    var fruitsName : [String] = ["Apple","Banana","Cherry","Fig","Grapes","Guava","Kiwi","Mango","Orange","Pear","Pomegranate","Strawberry","Watermelon","Apple","Banana","Cherry","Fig","Grapes","Guava","Kiwi","Mango","Orange","Pear","Pomegranate","Strawberry","Watermelon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let nibCell = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: "cell")

        
    }
}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruitsName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imgView.image = UIImage(named: fruitsImages[indexPath.row])
        cell.nameLabel.text = fruitsName[indexPath.row]
        return cell
    }
    
    }
extension ViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacing: CGFloat = 1 // Space between cells
        let totalSpacing = spacing * (2 - 1) // For 2 items in a row
        let width = (collectionView.bounds.width - totalSpacing) / 2 // Divide by 2 for 2 cells per row
        let height = width * 0.6 // Reduce the height (e.g., 60% of the width)
        return CGSize(width: width, height: height)
    }


    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
}

}



