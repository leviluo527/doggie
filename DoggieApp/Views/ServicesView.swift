import SwiftUI

struct ServicesView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                SectionHeaderView(title: "预约服务", subtitle: "选择城市与服务类型")

                VStack(spacing: 12) {
                    ServiceShortcutCard(title: "选择城市", subtitle: "定位或手动输入", icon: "location")
                    ServiceShortcutCard(title: "服务时间", subtitle: "支持48小时内预约", icon: "calendar")
                    ServiceShortcutCard(title: "偏好设置", subtitle: "宠物习惯与禁忌", icon: "slider.horizontal.3")
                }

                SectionHeaderView(title: "服务清单", subtitle: "简洁明了的服务组合")

                VStack(spacing: 16) {
                    ForEach(SampleData.serviceCategories) { category in
                        ServiceCategorySummary(category: category)
                    }
                }
            }
            .padding(20)
        }
        .background(Color.surfaceBackground)
    }
}

private struct ServiceShortcutCard: View {
    let title: String
    let subtitle: String
    let icon: String

    var body: some View {
        HStack(spacing: 12) {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.brandGreen.opacity(0.15))
                .frame(width: 44, height: 44)
                .overlay(
                    Image(systemName: icon)
                        .foregroundStyle(.brandGreen)
                )

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                Text(subtitle)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 16).fill(.white))
        .shadow(color: .black.opacity(0.04), radius: 6, x: 0, y: 3)
    }
}

private struct ServiceCategorySummary: View {
    let category: ServiceCategory

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(category.title)
                .font(.headline)
            ForEach(category.options) { option in
                HStack(alignment: .top, spacing: 12) {
                    Circle()
                        .fill(Color.brandGreen.opacity(0.2))
                        .frame(width: 12, height: 12)
                        .padding(.top, 6)

                    VStack(alignment: .leading, spacing: 4) {
                        Text(option.title)
                            .font(.subheadline.bold())
                        Text(option.description)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }

                    Spacer()
                    Text(option.priceHint)
                        .font(.caption.bold())
                        .foregroundStyle(.brandOrange)
                }
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 16).fill(.white))
        .shadow(color: .black.opacity(0.04), radius: 6, x: 0, y: 3)
    }
}

#Preview {
    ServicesView()
}
