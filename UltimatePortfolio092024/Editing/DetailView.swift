//
//  DetailView.swift
//  UltimatePortfolio092024
//
//  Created by Keyla Barreto on 09/04/24.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        VStack {
            if let issue = dataController.selectedIssue {
                IssueView(issue: issue)
            } else {
                NoIssueView()
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView()
        .environmentObject(DataController())
}
