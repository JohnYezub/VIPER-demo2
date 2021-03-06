//
//  Model.swift
//  VIPER demo2
//
//  Created by   admin on 20.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
// MARK: - JSONModel
struct SunModel: Codable {
    let results: Results
   // let status: String
}

// MARK: - Results
struct Results: Codable {
    let sunrise, sunset: String
    
    let solarNoon: String
    let dayLength: Int
    let civilTwilightBegin, civilTwilightEnd, nauticalTwilightBegin, nauticalTwilightEnd: String
    let astronomicalTwilightBegin, astronomicalTwilightEnd: String

//    enum CodingKeys: String, CodingKey {
//        case sunrise, sunset
//        case solarNoon = "solar_noon"
//        case dayLength = "day_length"
//        case civilTwilightBegin = "civil_twilight_begin"
//        case civilTwilightEnd = "civil_twilight_end"
//        case nauticalTwilightBegin = "nautical_twilight_begin"
//        case nauticalTwilightEnd = "nautical_twilight_end"
//        case astronomicalTwilightBegin = "astronomical_twilight_begin"
//        case astronomicalTwilightEnd = "astronomical_twilight_end"
//    }
}
