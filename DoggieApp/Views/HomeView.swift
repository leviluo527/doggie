import SwiftUI

struct HomeView: View {
    private let quickTips = [
        "身份核验+上门核查",
        "服务前视频沟通",
        "可视化行程更新"
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Doggie 宠爱服务")
                        .font(.largeTitle.bold())
                    Text("专为中国城市养宠家庭设计，寄养、上门、遛狗、训练一站式安排。")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.brandGreen.opacity(0.12))
                    .frame(height: 140)
                    .overlay(
                        VStack(alignment: .leading, spacing: 12) {
                            Text("今日推荐")
                                .font(.headline)
                            Text("附近家庭寄养位已为你预留")
                                .font(.title3.bold())
                            Text("查看3km内可预约寄养")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        .padding(),
                        alignment: .leading
                    )

                SectionHeaderView(title: "安心服务", subtitle: "本地化服务保障")

                VStack(alignment: .leading, spacing: 12) {
                    ForEach(quickTips, id: \.self) { tip in
                        HStack {
                            Image(systemName: "checkmark.seal")
                                .foregroundStyle(.brandGreen)
                            Text(tip)
                                .font(.subheadline)
                            Spacer()
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 14).fill(.white))
                        .shadow(color: .black.opacity(0.04), radius: 4, x: 0, y: 2)
                    }
                }

                SectionHeaderView(title: "热门服务", subtitle: "满足不同养宠场景")

                VStack(spacing: 16) {
                    ForEach(SampleData.serviceCategories) { category in
                        ServiceCategoryCard(category: category)
                    }
                }
            }
            .padding(20)
        }
        .background(Color.surfaceBackground)
    }
}

private struct ServiceCategoryCard: View {
    let category: ServiceCategory

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 6) {
                Text(category.title)
                    .font(.headline)
                Text(category.subtitle)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            ForEach(category.options) { option in
                ServiceCardView(option: option)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).fill(.white))
        .shadow(color: .black.opacity(0.04), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    HomeView()
}
