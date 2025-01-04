//
//  TagsMenuView.swift
//  UltimatePortfolio092024
//
//  Created by Keyla Barreto on 12/14/24.
//

import SwiftUI

struct TagsMenuView: View {
    @EnvironmentObject var dataController: DataController
    @ObservedObject var issue: Issue
    
    var body: some View {
        Menu {
            // Show selected tags first
            ForEach(issue.issueTags) { tag in
                Button {
                    issue.removeFromTags(tag)
                } label: {
                    Label(tag.tagName, systemImage: "checkmark")
                }
            }
            
            // Now show unselected tags
            let otherTags = dataController.missingTags(from: issue)
            
            if otherTags.isEmpty == false {
                Divider()
                
                Section("Add Tags") {
                    ForEach(otherTags) { tag in
                        Button(tag.tagName) {
                            issue.addToTags(tag)
                        }
                    }
                }
            }
                
        } label: {
            Text(issue.issueTagsList)
                .multilineTextAlignment(.leading)
                .animation(nil, value: issue.issueTagsList)
        }
    }
}

#Preview {
    TagsMenuView(issue: Issue.example)
        .environmentObject(DataController())
}
