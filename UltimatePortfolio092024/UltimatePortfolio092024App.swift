//
//  UltimatePortfolio092024App.swift
//  UltimatePortfolio092024
//
//  Created by Keyla Barreto on 09/03/24.
//

import SwiftUI

@main
struct UltimatePortfolio092024App: App {
    @StateObject var dataController = DataController()
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
            .onChange(of: scenePhase) { (phase, _) in
                if phase != .active {
                    dataController.save()
                }
            }
        }
    }
}
