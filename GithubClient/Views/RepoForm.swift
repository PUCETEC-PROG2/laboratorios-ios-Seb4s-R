//
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct RepoForm: View {

    @State private var repoName = ""
    @State private var repoDescription = ""

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

                VStack(spacing: 24) {

                    VStack(spacing: 18) {

                        TextField(
                            "",
                            text: $repoName,
                            prompt: Text("Nombre del repositorio")
                                .foregroundStyle(.white.opacity(0.6))
                        )
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .overlay {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.cyan.opacity(0.5), lineWidth: 1)
                        }

                        TextField(
                            "",
                            text: $repoDescription,
                            prompt: Text("Descripción del repositorio")
                                .foregroundStyle(.white.opacity(0.6))
                        )
                        .lineLimit(4...8)
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .overlay {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.purple.opacity(0.5), lineWidth: 1)
                        }

                    }
                    .padding(24)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    .overlay {
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(
                                LinearGradient(
                                    colors: [.cyan.opacity(0.5), .purple.opacity(0.5)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ),
                                lineWidth: 1
                            )
                    }

                    Button {

                        print("Guardar")

                    } label: {

                        Label("Guardar repositorio",
                              systemImage: "icloud.and.arrow.up.fill")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()

                    }
                    .background(
                        LinearGradient(
                            colors: [.cyan, .purple],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .clipShape(Capsule())
                    .shadow(color: .cyan.opacity(0.6), radius: 15)

                }
                .padding()
            }
            .navigationTitle("Nuevo repositorio")
            .navigationBarTitleDisplayMode(.inline)
        }
        .preferredColorScheme(.dark)
    }
}
#Preview {
    RepoForm()
}
