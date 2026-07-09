//
//  RepoItem.swift
//  GithubClient
//
//  Created by Sebastian Rojas on 9/7/26.
//

import SwiftUI

struct RepoItem: View {
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(uiImage: .gitCar)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 8) {
                Text("Nombre del repositorio")
                    .font(.headline)
                    .foregroundStyle(.accent)

                Text("Este es un texto de ejemplo para mostrar la descripción del repositorio.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)

                HStack {
                    Text("Lenguaje:")
                        .fontWeight(.semibold)

                    Text("Swift")
                        .foregroundStyle(.blue)
                }
                .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.08), radius: 5, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    RepoItem()
        .padding()
}
