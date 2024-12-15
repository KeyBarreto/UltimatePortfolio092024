//
//  SidebarViewToolbar.swift
//  UltimatePortfolio092024
//
//  Created by Keyla Barreto on 12/14/24.
//

import SwiftUI

struct SidebarViewToolbar: View {
    @EnvironmentObject var dataController: DataController
    @State private var showingAwards = false
    
    var body: some View {
        Button(action: dataController.newTag) {
            Label("Add tag", systemImage: "plus")
        }
        
        Button {
            showingAwards.toggle()
        } label : {
            Label("Show awards", systemImage: "rosette")
        }
        .sheet(isPresented: $showingAwards, content: AwardsView.init)
#if DEBUG
        Button {
            dataController.deleteAll()
            dataController.createSampleData()
        } label: {
            Label("Add samples", systemImage: "flame")
        }
#endif
    }
}

#Preview {
    SidebarViewToolbar()
        .environmentObject(DataController())
}
