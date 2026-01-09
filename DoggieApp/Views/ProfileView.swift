import SwiftUI

struct ProfileView: View {
    private let items = [
        ("宠物档案", "pawprint"),
        ("订单记录", "list.bullet.rectangle"),
        ("家庭成员", "person.2"),
        ("安全中心", "shield")
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack(spacing: 16) {
                    Circle()
                        .fill(Color.brandGreen.opacity(0.2))
                        .frame(width: 64, height: 64)
                        .overlay(
                            Image(systemName: "person.crop.circle")
                                .font(.title)
                                .foregroundStyle(.brandGreen)
                        )

                    VStack(alignment: .leading, spacing: 4) {
                        Text("你好，豆包爸")
                            .font(.title2.bold())
                        Text("已完成身份认证")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 18).fill(.white))
                .shadow(color: .black.opacity(0.04), radius: 6, x: 0, y: 3)

                SectionHeaderView(title: "常用功能", subtitle: "轻量化管理个人信息")

                VStack(spacing: 12) {
                    ForEach(items, id: \.0) { item in
                        ProfileRow(title: item.0, icon: item.1)
                    }
                }

                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.brandOrange.opacity(0.12))
                    .frame(height: 110)
                    .overlay(
                        VStack(alignment: .leading, spacing: 6) {
                            Text("专属福利")
                                .font(.headline)
                            Text("城市新用户首单减免20元")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        .padding(),
                        alignment: .leading
                    )
            }
            .padding(20)
        }
        .background(Color.surfaceBackground)
    }
}

private struct ProfileRow: View {
    let title: String
    let icon: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .foregroundStyle(.brandGreen)
                .frame(width: 24)
            Text(title)
                .font(.subheadline)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 14).fill(.white))
        .shadow(color: .black.opacity(0.04), radius: 6, x: 0, y: 3)
    }
}

#Preview {
    ProfileView()
}
