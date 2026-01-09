import SwiftUI

struct AIDoctorView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                SectionHeaderView(title: "AI 宠物医生", subtitle: "拍照 + 问答，快速获得护理建议")

                VStack(spacing: 12) {
                    ForEach(SampleData.aiActions) { action in
                        AIDoctorActionCard(action: action)
                    }
                }

                SectionHeaderView(title: "智能推荐", subtitle: "结合中国城市环境和用药习惯")

                VStack(spacing: 12) {
                    ForEach(SampleData.aiProducts) { product in
                        ProductRowView(product: product)
                    }
                }

                RoundedRectangle(cornerRadius: 18)
                    .fill(Color.brandGreen.opacity(0.12))
                    .frame(height: 120)
                    .overlay(
                        VStack(alignment: .leading, spacing: 8) {
                            Text("温馨提示")
                                .font(.headline)
                            Text("AI建议不能替代线下诊疗，严重症状请及时就医。")
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

#Preview {
    AIDoctorView()
}
