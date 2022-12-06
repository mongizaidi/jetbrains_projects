//
//  ProjectItemView.swift
//  Jetbrains projects
//
//  Created by Mongi Zaidi on 06/12/2022.
//

import SwiftUI
struct ProjectRowView: View {

    var project: Project

    var body: some View {
        VStack(alignment: .leading) {
            Text(project.full_name)
                .bold()
            Text("Forks: \(project.forks)")
            Text("Open issues : \(project.open_issues)")
            Text("Watchers: \(project.watchers.formatted())")
        }
    }
}

struct ProjectRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectRowView(project: projectsDataPreview[0])
            .previewLayout(.fixed(width: 375, height: 100))
    }
}
