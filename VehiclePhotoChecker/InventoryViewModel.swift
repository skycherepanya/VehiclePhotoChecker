//
//  InventoryViewModel.swift
//  VehiclePhotoChecker
//
//  Created by Oleksandr Cherepania on 6/14/25.
//

import Combine

@MainActor
final class InventoryViewModel: ObservableObject {
    @Published var vehicles: [VehicleStatus] = []

    // Пока-що мокові дані; замінимо на Google Sheets пізніше
    func fetchInventory() {
        vehicles = [
            .init(vin: "WDDGF8AB9EA123456", stock: "P001"),
            .init(vin: "W1K5G8EB7PF789012", stock: "P002"),
            .init(vin: "4JGFB5KB1RA345678", stock: "P003")
        ]
    }

    func togglePhoto(for vehicle: VehicleStatus) {
        guard let idx = vehicles.firstIndex(where: { $0.id == vehicle.id }) else { return }
        vehicles[idx].hasPhoto.toggle()
    }
}
