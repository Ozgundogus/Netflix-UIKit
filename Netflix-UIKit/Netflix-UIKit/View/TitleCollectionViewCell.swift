//
//  TitleCollectionViewCell.swift
//  Netflix-UIKit
//
//  Created by Ozgun Dogus on 20.05.2023.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleCollectionViewCell"
    
    
    // immutable yapı olduğu için aşağıdaki gibi kullanılır
    private let posterImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    required init?(coder: NSCoder) {
      fatalError()
    }
    //UIView alt sınıfında yer alan alt view'ların konumlarını, boyutlarını veya diğer özelliklerini ayarlamak veya yeniden hesaplamak //için kullanılır
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = bounds
    }
    public func configure(with model:String){

        
        guard let url = URL(string:" https://image.tmdb.org/t/p/w500/\(model)") else{return}
      
        posterImageView.sd_setImage(with: url,completed: nil)
        
       
        
    }
}
