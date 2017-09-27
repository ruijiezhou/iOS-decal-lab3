//
//  ImagePickerController.swift
//  Snapchat Clone
//
//  Created by Akilesh Bapu on 2/27/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

/// Grid of images - in a future assignment, you'll be replacing this view controller with a camera
class ImagePickerController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet var imageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageCollectionView.collectionViewLayout = ImageFlowLayout()
        self.imageCollectionView.backgroundColor = UIColor.lightGray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func selectImage(_ image: UIImage) {
        //The image being selected is passed in as "image".
    }
    
    /// DON'T MODIFY CODE HERE AND BELOW!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pickImageCell", for: indexPath) as! ImageCollectionViewCell
        cell.image.image = allImages[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = collectionView.cellForItem(at: indexPath) as! ImageCollectionViewCell
        selectImage(selectedCell.image.image!)
    }
}
