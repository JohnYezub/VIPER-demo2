//
//  Interactor.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

///Presenter calls Interactor listens
class Interactor: PresenterToInteractor {

    ///Intercator calls Presenter listens
    weak var presenter: InteractorToPresenter?

    private let networkService = NetworkService()

    func fetchData() {
        print("Interactor was asked to \(#function)")

        networkService.getData { [weak self] result in
            switch result {
            case .success(let data):
                print(data)
                let decoded = DecodeNetworkData.decodeData(type: SunModel.self, data: data)
                DataStorage.shared.storeData(decoded)
                self?.presenter?.fetchSuccess(message: "I've got some data")
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

}
