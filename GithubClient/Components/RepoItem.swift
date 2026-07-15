import SwiftUI

struct RepoItem: View {

    let repository: Repository

    var body: some View {
        HStack(spacing: 18) {

            AsyncImage(url: URL(string: repository.owner.avatarUrl)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Image(uiImage: .gitCar)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .frame(width: 82, height: 82)
            .background(.ultraThinMaterial)
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(
                        LinearGradient(
                            colors: [.cyan, .purple, .pink],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ),
                        lineWidth: 2
                    )
            }
            .shadow(color: .cyan.opacity(0.6), radius: 12)

            VStack(alignment: .leading, spacing: 10) {

                Text(repository.name)
                    .font(.title3.bold())
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.white, .cyan],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )

                if let description = repository.description {
                    Text(description)
                        .font(.footnote)
                        .foregroundStyle(.white.opacity(0.75))
                        .lineLimit(2)
                }

                if let language = repository.language {
                    Label(language, systemImage: "chevron.left.forwardslash.chevron.right")
                        .font(.caption.bold())
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(.ultraThinMaterial)
                        .overlay {
                            Capsule()
                                .stroke(.cyan.opacity(0.5), lineWidth: 1)
                        }
                        .clipShape(Capsule())
                        .foregroundStyle(.cyan)
                }
            }

            Spacer()
        }
        .padding(18)
        .background {

            RoundedRectangle(cornerRadius: 24)
                .fill(.ultraThinMaterial)

            RoundedRectangle(cornerRadius: 24)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.cyan.opacity(0.08),
                            Color.purple.opacity(0.10),
                            Color.pink.opacity(0.08)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )

            RoundedRectangle(cornerRadius: 24)
                .stroke(
                    LinearGradient(
                        colors: [
                            .white.opacity(0.35),
                            .cyan.opacity(0.45),
                            .purple.opacity(0.35)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
        }
        .shadow(color: .cyan.opacity(0.25), radius: 15)
        .shadow(color: .purple.opacity(0.20), radius: 30)
        .padding(.horizontal)
        .padding(.vertical, 6)
    }
}

#Preview {
    ZStack {

        LinearGradient(
            colors: [
                Color.black,
                Color(red: 0.05, green: 0.02, blue: 0.12),
                Color(red: 0.02, green: 0.07, blue: 0.16)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()

        RepoItem(repository: Repository.sampleData[0])
    }
}
