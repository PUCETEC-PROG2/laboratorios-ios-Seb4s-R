//
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct RepoList: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Lista de repositorios")
            } //para declarar una columna V de vertical
            .navigationTitle("Repositorios")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    RepoList()
}
