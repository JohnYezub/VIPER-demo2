//
//  DataStorage.swift
//  VIPER demo2
//
//  Created by   admin on 21.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

///singleton to store data from network
///init by Interactor
///set data by Interactor
class DataStorage {
    
    static let shared = DataStorage()
    
    var data: SunModel? {
        didSet {
            print("data didSet in DataStorage")
        }
    }
    
    private init() {
        print("DataStorage init")
    }
    
    deinit {
        print("DataStorage deinit")
    }
    
}
