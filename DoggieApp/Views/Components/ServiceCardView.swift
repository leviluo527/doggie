import SwiftUI

struct ServiceCardView: View {
    let option: ServiceOption

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(option.title)
                    .font(.headline)
                Spacer()
                TagPillView(text: option.tag)
            }

            Text(option.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            Text(option.priceHint)
                .font(.callout.bold())
                .foregroundStyle(.brandOrange)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 16).fill(.white))
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 4)
    }
}

struct TagPillView: View {
    let text: String

    var body: some View {
        Text(text)
            .font(.caption.bold())
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(Capsule().fill(Color.brandGreen.opacity(0.15)))
            .foregroundStyle(.brandGreen)
    }
}
