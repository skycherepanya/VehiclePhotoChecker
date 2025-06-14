//
//  ContentView.swift
//  VehiclePhotoChecker
//
//  Created by Oleksandr Cherepania on 6/14/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = InventoryViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.vehicles) { vehicle in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(vehicle.vin)
                                .font(.system(.body, design: .monospaced))
                            Text("Stock: \(vehicle.stock)")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        Button {
                            vm.togglePhoto(for: vehicle)
                        } label: {
                            Image(systemName: vehicle.hasPhoto ? "checkmark.circle.fill"
                                                               : "circle")
                                .imageScale(.large)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .navigationTitle("Vehicle Photo Checker")
            .toolbar {
                Button("Load") { vm.fetchInventory() }
            }
        }
    }
}

#Preview {
    ContentView()
}
