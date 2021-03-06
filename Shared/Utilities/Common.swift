//
//  Common.swift
//  OrderSummary (iOS)
//
//  Created by Jinwook Kim on 2022/01/01.
//

import SwiftUI

struct Common {
    static let price: Double = 59.99
    struct Colors {
        static let kBackgroundColor: Color = Color(red: 208 / 256, green: 220 / 256, blue: 255 / 256)
        static let kTitleColor: Color = Color(red: 36 / 256, green: 44 / 256, blue: 75 / 256)
        static let kContentColor: Color = Color(red: 102 / 256, green: 107 / 256, blue: 125 / 256)
        static let kPlanBackgroundColor: Color = Color(red: 246 / 256, green: 248 / 256, blue: 254 / 256)
        static let kButtonColor: Color = Color(red: 49 / 256, green: 37 / 256, blue: 221 / 256)
    }
    struct Texts {
        static let kTitle: String = "Order Summary"
        static let kDescription: String = "You can now listen to millions of songs, audiobooks, and podcasts on any device anywhere you like!"
        static let kPlanText: String = "Annual Plan"
        static let kPrice: String = "$\(Common.price)/year"
        static let kChangeText: String = "Change"
        static let kProceedText: String = "Proceed to Payment"
        static let kCancelText: String = "Cancel Order"
    }
}
