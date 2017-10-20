//
//  CatogoryCell.swift
//  App Store
//
//  Created by PoGo on 10/19/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit


class CategoryCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been implemented")
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Best New Apps"
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
        
    }()

    let appsCollectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            
            collectionView.backgroundColor = UIColor.clear
            collectionView.showsHorizontalScrollIndicator = false
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            
            return collectionView
        
    }()
    
    let dividerLineView: UIView = {
        let view = UIView()
//        view.backgroundColor = UIColor(white: 0.4, alpha: 0.4)
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
 
    }()
    
    
    
    let cellId = "appCellId"
    
    func setupViews(){
        backgroundColor = UIColor.clear
        addSubview(appsCollectionView)
        addSubview(dividerLineView)
        addSubview(nameLabel)
        
        appsCollectionView.delegate = self
        appsCollectionView.dataSource = self
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        
        appsCollectionView.topAnchor.constraint(equalTo: topAnchor ).isActive = true
        appsCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        appsCollectionView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        appsCollectionView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        dividerLineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        dividerLineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerLineView.leftAnchor.constraint(equalTo: leftAnchor, constant: 14).isActive = true
        dividerLineView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 14).isActive = true
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height - 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 14, 0, 14)
    }
    
}

class AppCell: UICollectionViewCell{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been implemented")
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "frozen")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        
        return iv
        
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Disney Build It: Frozen"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Entertainment"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.darkGray
//        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$3.99"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.darkGray
        //        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    func setupViews(){
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(categoryLabel)
        addSubview(priceLabel)
        
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        nameLabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 40)
        categoryLabel.frame = CGRect(x: 0, y: frame.width + 42, width: frame.width, height: 20)
        priceLabel.frame = CGRect(x: 0, y: frame.width + 62, width: frame.width, height: 20)
        
        
//        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        imageView.bottomAnchor.constraint(equalTo: nameLabel.topAnchor).isActive = true
//        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
//        imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
//
//        nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5).isActive = true
//        nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//        nameLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
//        nameLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
//
    }
}









