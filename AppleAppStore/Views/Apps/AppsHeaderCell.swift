//
//  AppsHeaderCell.swift
//  AppleAppStore
//
//  Created by mac on 23/02/2022.
//  Copyright © 2022 Hassan Ramadan Ali. All rights reserved.
//

import UIKit

class AppsHeaderCell: UICollectionViewCell {
    
    let companyLabel = UILabel(text: "Facebook", font: .boldSystemFont(ofSize: 12))
    let titleLabel = UILabel(text: "Keeping up with friends is faster than ever", font: .systemFont(ofSize: 24))
    
    let imageView = UIImageView(cornerRadius: 8)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        companyLabel.textColor = .blue
        imageView.backgroundColor = .red
        titleLabel.numberOfLines = 2
        
        let stackView = VerticalStackView(arrangedSubviews: [
            companyLabel,
            titleLabel,
            imageView
            ], spacing: 10)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 16, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}

