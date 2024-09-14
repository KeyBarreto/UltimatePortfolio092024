//
//  NoIssueView.swift
//  UltimatePortfolio092024
//
//  Created by Keyla Barreto on 09/14/24.
//

import SwiftUI

struct NoIssueView: View {
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        Text("No Issue Selected")
            .font(.title)
            .foregroundStyle(.secondary)
        
        Button("New Issue") {
            // make new issue
        }
    }
}

#Preview {
    NoIssueView()
}
