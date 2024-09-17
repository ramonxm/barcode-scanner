//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Ramon Xavier on 01/09/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode = ""
    
    var body: some View {
        NavigationView {
            VStack {
               ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)

            }
        }.navigationTitle("Barcode Scanner")
    }
}

#Preview {
    BarcodeScannerView()
}
