//
//  File1.swift
//  Task2_W5_M4
//
//  Created by Aziz on 16/1/22.
//

//import Foundation
//import SnapKit
//
//class NamesCell: UITableViewCell {
//    
//    var namesTitle = UILabel()
//    var namesDescriptions = UILabel()
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        addSubview(namesTitle)
//        backgroundColor = UIColor.systemGray5
//        namesTitle.snp.makeConstraints {make in
//            make.left.top.equalToSuperview()
//            make.width.equalToSuperview().dividedBy(2)
//        }
//        addSubview(namesDescriptions)
//        namesDescriptions.snp.makeConstraints{make in
//            make.width.equalToSuperview().dividedBy(2)
//            make.top.right.equalToSuperview()
//        }
//        configureNamesTitle()
//        configureNamesDescriptions()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    func configureNamesTitle() {
//        namesTitle.numberOfLines = 1
//        namesTitle.adjustsFontSizeToFitWidth = true
//        namesTitle.font = UIFont.systemFont(ofSize: 15, weight: .bold)
//    }
//    func configureNamesDescriptions() {
//        namesDescriptions.numberOfLines = 1
//        namesDescriptions.adjustsFontSizeToFitWidth = true
//        namesDescriptions.font = UIFont.systemFont(ofSize: 15, weight: .bold)
//    }
//    }
//



import Foundation
import UIKit
import SnapKit


class TestCell: UITableViewCell {
    
    lazy var titleImage: UIImageView = {
        let view = UIImageView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 5
        return view
    }()
    
    lazy var titleName: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 20)
        view.numberOfLines = 0
        return view
    }()
    
    lazy var titleDescription: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12)
        view.textColor = UIColor(red: 51/255, green: 60/255, blue: 68/255, alpha: 1)
        view.numberOfLines = 0
        return view
    }()
    
    lazy var likeButton: CustonButton = {
        let view = CustonButton()
        view.setImage(UIImage(named:"like0"), for: .normal)
        return view
    }()
    
    lazy var dislikeButton: CustonButton = {
        let view = CustonButton()
        view.setImage(UIImage(named:"dislike0"), for: .normal)
        return view
    }()
    
    lazy var border: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()
    
    override func layoutSubviews() {
        
        addSubview(titleImage)
        titleImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(5)
            make.centerY.equalToSuperview()
            make.height.width.equalTo(90)
        }
        
        addSubview(titleName)
        titleName.snp.makeConstraints { make in
            make.left.equalTo(titleImage.snp.right).offset(10)
            make.top.equalToSuperview().offset(8)
            make.height.equalTo(25)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        
        addSubview(titleDescription)
        titleDescription.snp.makeConstraints { make in
            make.left.equalTo(titleImage.snp.right).offset(10)
            make.top.equalTo(titleName.snp.bottom).offset(5)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(60)
        }
        
        addSubview(likeButton)
        likeButton.snp.makeConstraints { make in
            make.left.equalTo(titleName.snp.right)
            make.top.equalToSuperview().offset(10)
            make.height.width.equalTo(15)
        }
        
        addSubview(dislikeButton)
        dislikeButton.snp.makeConstraints { make in
            make.left.equalTo(likeButton.snp.right).offset(13)
            make.top.equalToSuperview().offset(12)
            make.height.width.equalTo(15)
        }
        
        addSubview(border)
        border.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-1)
            make.height.equalTo(1)
            make.width.equalToSuperview().multipliedBy(0.97)
        }
    }
}
