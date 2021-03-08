//
//  ViewController.swift
//  Card Phrases
//
//  Created by Tomate Albertini on 02/03/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        overrideUserInterfaceStyle = .light
        
//        self.view.backgroundColor = .white
        self.setupViews()
    }
    
    private func setupViews() {

        let navigationItem = UINavigationItem()
            
        navigationItem.title = "Title"
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(click))
        navigationItem.rightBarButtonItem = button
    
        self.navigationItem.rightBarButtonItem = button
    }
    
    @objc private func click() {
        self.navigationController?.pushViewController(NewCardViewController(), animated: true)
    }

}

