//
//  DateConverter.swift
//  VIPER demo2
//
//  Created by   admin on 21.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

class DateConverter {
    static func giveTodayDate() -> String {
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "YYYY-MM-dd"
        return df.string(from: date)
    }

    ///from 2015-05-21T19:22:59+00:00 to HH:mm
    static func convertISOtoString(string: String) -> String {
        let isoDf = ISO8601DateFormatter()
        //df.dateFormat = "YYYY-MM-dd 'T' HH:mm:ss+ZZZZ
        let date = isoDf.date(from: string)
        let df = DateFormatter()
        df.dateStyle = .none
        df.timeStyle = .short
        df.timeZone = TimeZone(secondsFromGMT: 28800)

        return df.string(from: date!)
    }

    static func convertSecondsToString(value: Int) -> String {
        let z = value
        let hh = Int(z / 3600)
        let temp = z % 3600
        let mm = Int(temp/60)
        let ss = temp % 60
        if mm < 10 {
            return "\(hh):0\(mm):\(ss)"
        } else {
            return "\(hh):\(mm):\(ss)"
        }
    }
}

//
