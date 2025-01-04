//
//  SmartFilterRow.swift
//  UltimatePortfolio092024
//
//  Created by Keyla Barreto on 12/14/24.
//

import SwiftUI

struct SmartFilterRow: View {
    var filter: Filter
    
    var body: some View {
        NavigationLink(value: filter) {
            Label(LocalizedStringKey(filter.name), systemImage: filter.icon)
        }
    }
}

#Preview {
    SmartFilterRow(filter: .all)
}
