//
//  SecondView.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
import UIKit
class SecondViewController: UIViewController {
    
    var presenter: ViewToPresenterSecond?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        print("SecondViewController \(#function)")
        self.view.backgroundColor = .orange
    }
    
    deinit {
        print("de-init SecondViewController")
    }
}

extension SecondViewController: PresenterToViewSecond {
    func showSmth() {
        self.navigationItem.title = "Second"
    }
    
    
}
