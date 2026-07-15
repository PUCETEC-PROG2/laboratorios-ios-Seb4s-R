//
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//
import SwiftUI

struct RepoList: View {
    @StateObject var viewController = RepoListViewController()

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [
                        .black,
                        Color(red: 0.05, green: 0.02, blue: 0.12),
                        Color(red: 0.02, green: 0.08, blue: 0.18)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                Group {
                    if viewController.isLoading {
                        ProgressView("Cargando repositorios...")
                            .tint(.cyan)
                    } else if let errorMsg = viewController.errorMsg {
                        Text(errorMsg)
                            .foregroundStyle(.red)
                            .padding()
                    } else {
                        List(viewController.repos) { repo in
                            RepoItem(repository: repo)
                                .listRowInsets(EdgeInsets())
                                .listRowSeparator(.hidden)
                                .listRowBackground(Color.clear)
                        }
                        .listStyle(.plain)
                        .scrollContentBackground(.hidden)
                        .background(Color.clear)
                    }
                }
            }
            .navigationTitle("Repositorios")
            .navigationBarTitleDisplayMode(.inline)
        }
        .tint(.cyan)
        .onAppear {
            Task {
                await viewController.loadRepos()
            }
        }
    }
}

#Preview {
    RepoList()
}
