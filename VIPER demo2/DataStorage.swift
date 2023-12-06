//
//  DataStorage.swift
//  VIPER demo2
//
//  Created by   admin on 21.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

/// Singleton to store  and pass data from network
/// Init by Interactor
/// Set data by Interactor
class DataStorage {

    static let shared = DataStorage()

    private(set) var data: SunModel? {
        didSet {
            print("data didSet in DataStorage")
        }
    }

    private init() {
        print("DataStorage init")
    }

    func storeData(_ data: SunModel?) {
        self.data = data
    }

    deinit {
        print("DataStorage deinit")
    }

}
