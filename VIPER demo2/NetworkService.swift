//
//  Network.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

///class created by Interactor to get network data

enum NetworkError: Error {
    case someError
    case networkError
}

class NetworkService {
    private var queue = DispatchQueue(label: "network", qos: .utility)

    init() {

    }

    func getData(completion: @escaping (Result<Data, Error>) -> Void) {
        //let date = "2020-09-21"
        let date = DateConverter.giveTodayDate()
        let urlString = "\(baseUrlString)/json?lat=-8.5&lng=115&date=\(date)&formatted=0"
        guard let url = URL(string: urlString) else { return }

        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            self?.queue.async {
                if let error = error {
                    completion(.failure(error))
                }
                if let data = data {
                    completion(.success(data))
                }
            }
        }
        task.resume()
    }

}

class DecodeNetworkData {
    class func decodeData<T: Decodable>(type: T.Type, data: Data?) -> T? {
        guard let data = data else { return nil }
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let result = try decoder.decode(T.self, from: data)
            return result
        } catch let error {
            print(error)
            print(error.localizedDescription)
            return nil
        }
    }

}
