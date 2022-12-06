//
//  ProjectsListView.swift
//  Jetbrains projects
//
//  Created by Mongi Zaidi on 06/12/2022.
//

import SwiftUI

struct ProjectsListView: View {

    @EnvironmentObject var projectsDataSource: ProjectsDataSource

    var body: some View {
        NavigationView() {
            List(projectsDataSource.projects) { project in
                NavigationLink(destination: ProjectDetailsView(project: project)) {
                    ProjectRowView(project: project)
                }
            }
            .navigationTitle("Jetbrains projects")
        }
        .refreshable {
            projectsDataSource.fetchProjects()
        }
    }

}

struct ProjectsListView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsListView()
            .environmentObject(ProjectsDataSource())
    }
}

