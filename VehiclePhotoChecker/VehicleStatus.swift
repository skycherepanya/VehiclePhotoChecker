//
//  VehicleStatus.swift
//  VehiclePhotoChecker
//
//  Created by Oleksandr Cherepania on 6/14/25.
//

import Foundation

struct VehicleStatus: Identifiable, Codable {
    let id = UUID()          // локальний id для SwiftUI
    let vin: String
    let stock: String
    var hasPhoto: Bool = false
}
