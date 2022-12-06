//
//  ProjectDetailsView.swift
//  Jetbrains projects
//
//  Created by Mongi Zaidi on 06/12/2022.
//

import SwiftUI

struct ProjectDetailsView: View {

    var project: Project

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(project.full_name)
                    .bold()
                if let description = project.description {
                    Text("Description:")
                        .padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
                    Text(description)
                }
            }
            .padding(16)
        }
    }
}

struct ProjectDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailsView(project: projectsDataPreview[0])
    }
}
