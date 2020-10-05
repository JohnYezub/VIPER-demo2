//
//  SecondViewController.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
import UIKit
class SecondViewController: UIViewController {
    
    var presenter: ViewToPresenterSecond?
    
    private var dayLenghtLabel: UILabel!
    private var dayLenghtValueLabel: UILabel!
    
    private var sunriseLabel: UILabel!
    private var sunriseValueLabel: UILabel!
    
    private var sunsetLabel: UILabel!
    private var sunsetValueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        print("SecondViewController \(#function)")
        
        presenter?.viewDidLoad()
    }
    
    private func setupUI() {
        self.view.backgroundColor = #colorLiteral(red: 0.9888154623, green: 0.9012486312, blue: 1, alpha: 1)
        
        dayLenghtValueLabel = UILabel()
        dayLenghtValueLabel.text = "--"
        dayLenghtValueLabel.font = UIFont(name: "Helvetica", size: 18)
        dayLenghtValueLabel.textColor = .darkGray
        dayLenghtValueLabel.textAlignment = .center
        view.addSubview(dayLenghtValueLabel)
        dayLenghtValueLabel.translatesAutoresizingMaskIntoConstraints = false
        dayLenghtValueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        dayLenghtValueLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
        dayLenghtLabel = UILabel()
        dayLenghtLabel.text = "Day Lenght"
        dayLenghtLabel.font = UIFont(name: "Helvetica", size: 18)
        dayLenghtLabel.textColor = .darkGray
        dayLenghtLabel.textAlignment = .center
        view.addSubview(dayLenghtLabel)
        dayLenghtLabel.translatesAutoresizingMaskIntoConstraints = false
        dayLenghtLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        dayLenghtLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40).isActive = true
        
        
        sunriseValueLabel = UILabel()
        sunriseValueLabel.text = "--"
        sunriseValueLabel.font = UIFont(name: "Helvetica", size: 18)
        sunriseValueLabel.textColor = .darkGray
        sunriseValueLabel.textAlignment = .center
        view.addSubview(sunriseValueLabel)
        sunriseValueLabel.translatesAutoresizingMaskIntoConstraints = false
        sunriseValueLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        sunriseValueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        sunsetValueLabel = UILabel()
        sunsetValueLabel.text = "--"
        sunsetValueLabel.font = UIFont(name: "Helvetica", size: 18)
        sunsetValueLabel.textColor = .darkGray
        sunsetValueLabel.textAlignment = .center
        view.addSubview(sunsetValueLabel)
        sunsetValueLabel.translatesAutoresizingMaskIntoConstraints = false
        sunsetValueLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        sunsetValueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        sunsetLabel = UILabel()
        sunsetLabel.text = "Sunset"
        sunsetLabel.font = UIFont(name: "Helvetica", size: 18)
        sunsetLabel.textColor = .darkGray
        sunsetLabel.textAlignment = .center
        view.addSubview(sunsetLabel)
        sunsetLabel.translatesAutoresizingMaskIntoConstraints = false
        sunsetLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40).isActive = true
        sunsetLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        sunriseLabel = UILabel()
        sunriseLabel.text = "SunRise"
        sunriseLabel.font = UIFont(name: "Helvetica", size: 18)
        sunriseLabel.textColor = .darkGray
        sunriseLabel.textAlignment = .center
        view.addSubview(sunriseLabel)
        sunriseLabel.translatesAutoresizingMaskIntoConstraints = false
        sunriseLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40).isActive = true
        sunriseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    deinit {
        print("de-init SecondViewController")
    }
}

extension SecondViewController: PresenterToViewSecond {
    func updateDayLenght(string: String) {
        DispatchQueue.main.async {
            self.dayLenghtValueLabel.text = string
        }
    }
    
    func updateSunrise(string: String) {
        DispatchQueue.main.async {
            self.sunriseValueLabel.text = string
        }
    }
    
    func updateSunset(string: String) {
        DispatchQueue.main.async {
            self.sunsetValueLabel.text = string
        }
    }
    
    
    func showSmth() {
        self.navigationItem.title = "Second"
    }
    
    
}
