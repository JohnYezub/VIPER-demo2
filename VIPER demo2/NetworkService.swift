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

//enum Result<Value, Error: Swift.Error> {
//    case success(Value)
//    case failure(Error)
//}

class NetworkService {
    
    static func getData(completion: @escaping (Result<Data?, NetworkError>) -> Void) {
        //let date = "2020-09-21"
        let date = DateConverter.giveTodayDate()
        let urlString = "https://api.sunrise-sunset.org/json?lat=-8.5&lng=115&date=\(date)&formatted=0"
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                completion(.success(data))
            } else {
                completion(.failure(.someError))
            }
        }
        task.resume()
    }
    
    static func decodeData<T: Decodable>(type: T.Type, data: Data?) -> T? {        
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
