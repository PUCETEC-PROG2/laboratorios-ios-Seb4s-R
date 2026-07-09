//
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Sebastián Rojas")
                    .font(.title)
                Image(uiImage: .gitCar)
                    .resizable()
                    .scaledToFit()
                Text("Seb4s-R")
                    .font(.headline)
                    .padding(.vertical)
                Text("Esta es mi descripción")
                    .font(.caption)
            }
            .padding()
            .navigationTitle("Perfil")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Profile()
}
