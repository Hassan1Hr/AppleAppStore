//
//  PreviewScreenshotsController.swift
//  AppleAppStore
//
//  Created by mac on 24/02/2022.
//  Copyright © 2022 Hassan Ramadan Ali. All rights reserved.
//

import UIKit

class PreviewScreenshotsController: HorizontalSnappingController, UICollectionViewDelegateFlowLayout {
    
    
    var app: Result? {
        didSet {
            collectionView.reloadData()
        }
    }
    
    class ScreenshotCell: UICollectionViewCell {
        
        static var idintifier: String{
            return NSStringFromClass(self)
        }
        let imageView = UIImageView(cornerRadius: 12)
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            imageView.backgroundColor = .purple
            addSubview(imageView)
            imageView.fillSuperview()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(ScreenshotCell.self, forCellWithReuseIdentifier: ScreenshotCell.idintifier)
        collectionView.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return app?.screenshotUrls.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ScreenshotCell.idintifier, for: indexPath) as! ScreenshotCell
        let screenshotUrl = self.app?.screenshotUrls[indexPath.item]
        cell.imageView.sd_setImage(with: URL(string: screenshotUrl ?? ""))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 250, height: view.frame.height)
    }
    
}

