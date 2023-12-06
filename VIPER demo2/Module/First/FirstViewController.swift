//
//  ViewController.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {

    var presenter: PresenterProtocol?

    var button: UIButton!
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        presenter?.viewDidLoad()
    }

    private func setupUI() {
        button = UIButton()
        button.setTitle("Show me", for: .normal)
        button.isHidden = true
        button.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 18)
        label.textColor = .darkGray
        label.textAlignment = .center
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20).isActive = true
    }

    @objc private func buttonClick(_ sender: UIButton) {
        presenter?.openSecond()
    }
}

//MARK: Delegate: PresenterToView
extension FirstViewController: ViewProtocol {
    func showMessage(withText: String) {
        print("ViewController \(#function)")
        DispatchQueue.main.async { [unowned self] in
            self.label.text = withText
            self.button.isHidden = false
        }

    }
}

