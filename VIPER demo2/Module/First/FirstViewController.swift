//
//  ViewController.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, PresenterToView {
            
    var presenter: ViewToPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        presenter?.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("Show Second", for: .normal)
        button.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    @objc func buttonClick(_ sender: UIButton) {
        presenter?.openSecond()
    }

    //MARK: Delegate: PresenterToView
    func showSmth() {
        print("ViewController \(#function)")
    }

}

