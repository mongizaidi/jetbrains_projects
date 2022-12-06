//
//  ProjectsDataSource.swift
//  Jetbrains projects
//
//  Created by Mongi Zaidi on 06/12/2022.
//

import Foundation

final class ProjectsDataSource: ObservableObject {
    @Published var projects: [Project] = [Project]()
    
    func fetchProjects() {
        guard let url = URL(string: "https://api.github.com/orgs/jetbrains/repos?page=1") else { return }
        let urlRequest = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: ", error)
                return
            }
            guard let response = response as? HTTPURLResponse else {                return
            }
            if response.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedProjects = try JSONDecoder().decode([Project].self, from: data)
                        self.projects = decodedProjects
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }
        dataTask.resume()
    }
}
