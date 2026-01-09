import SwiftUI

struct AIDoctorActionCard: View {
    let action: AIDoctorAction

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(action.title)
                .font(.headline)
            Text(action.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Text(action.detail)
                .font(.caption)
                .foregroundStyle(.brandGreen)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(RoundedRectangle(cornerRadius: 16).fill(.white))
        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
}

struct ProductRowView: View {
    let product: AIDoctorProduct

    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .fill(Color.brandOrange.opacity(0.2))
                .frame(width: 44, height: 44)
                .overlay(
                    Image(systemName: "cross.case")
                        .foregroundStyle(.brandOrange)
                )

            VStack(alignment: .leading, spacing: 4) {
                Text(product.name)
                    .font(.headline)
                Text(product.hint)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Text(product.note)
                    .font(.caption)
                    .foregroundStyle(.brandGreen)
            }

            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 14).fill(.white))
        .shadow(color: .black.opacity(0.04), radius: 6, x: 0, y: 3)
    }
}
