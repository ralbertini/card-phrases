//
//  NewCardViewController.swift
//  Card Phrases
//
//  Created by Tomate Albertini on 02/03/21.
//

import UIKit
import SnapKit

class NewCardViewController: UIViewController {

    lazy var lbTitle: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Novo card"
        return label
    }()
    
    lazy var txtCardTitle: UITextView = {
        let textField: UITextView = UITextView()
        textField.isEditable = true
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1.0
        textField.isMultipleTouchEnabled = true

        return textField
    }()
    
    lazy var bSave: UIButton = {
        let b: UIButton = UIButton()
        b.setTitle("Salvar", for: .normal)
        b.addTarget(self, action: #selector(tap), for: .touchUpInside)
        b.backgroundColor = .orange
        b.layer.cornerRadius = 5
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.setViews()
        self.setupConstraints()
    }
    
    private func setViews() {
        
        self.view.addSubview(self.lbTitle)
        self.view.addSubview(self.txtCardTitle)
        self.view.addSubview(self.bSave)
    }
    
    private func setupConstraints() {
        
        self.lbTitle.snp.makeConstraints { (make) in
            make.leftMargin.trailingMargin.equalToSuperview()
            make.height.equalTo(30.0)
            make.top.equalToSuperview().offset(80.0)
        }
        
        self.txtCardTitle.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(10.0)
            make.trailing.equalToSuperview().offset(-10.0)
            make.top.equalTo(self.lbTitle.snp.bottom).offset(10.0)
            make.height.equalTo(200.0)
            
        }
        
        self.bSave.snp.makeConstraints { (make) in
            make.top.equalTo(self.txtCardTitle.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.width.equalTo(self.view.frame.width / 2)
        }
    }
    
    @objc func tap() {
        print("Carlos")
    }
    
}
