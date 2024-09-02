//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Ramon Xavier on 01/09/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
               Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.green)

            }
        }.navigationTitle("Barcode Scanner")
    }
}

#Preview {
    BarcodeScannerView()
}
