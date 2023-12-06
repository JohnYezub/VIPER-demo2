//
//  Presenter.swift
//  VIPER demo2
//
//  Created by   admin on 19.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

/// View calls Presenter listens
class Presenter: PresenterProtocol {

    ///Presenter listeners
    weak var view: ViewProtocol?
    var interactor: PresenterToInteractor?
    var router: PresenterToRouter?

    //view delegates
    func viewDidLoad() {
        print(#function)
        interactor?.fetchData()

    }
    func openSecond() {
        router?.showVC(view: view)
    }

}

/// Interactor calls Presenter listens
extension Presenter: InteractorToPresenter {

    //Interactor delegates
    func fetchSuccess(message: String) {
        print("Interactor \(#function)")
        view?.showMessage(withText: message)
    }

    func fetchFails(error: String) {
        print("Interactor \(#function)")
        view?.showMessage(withText: error)
    }
}
