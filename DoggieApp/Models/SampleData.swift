import Foundation

enum SampleData {
    static let serviceCategories: [ServiceCategory] = [
        ServiceCategory(
            title: "寄养与日托",
            subtitle: "持证家庭+固定上门核验",
            options: [
                ServiceOption(title: "家庭寄养", description: "独立房间+每日视频", priceHint: "¥98起/晚", tag: "推荐"),
                ServiceOption(title: "白天日托", description: "8:00-20:00可接送", priceHint: "¥58起/天", tag: "热门")
            ]
        ),
        ServiceCategory(
            title: "上门服务",
            subtitle: "覆盖北上广深等城市",
            options: [
                ServiceOption(title: "上门喂养", description: "陪伴30分钟+清洁", priceHint: "¥45起/次", tag: "稳定"),
                ServiceOption(title: "上门遛狗", description: "30-60分钟路线可选", priceHint: "¥50起/次", tag: "安心")
            ]
        ),
        ServiceCategory(
            title: "宠物学习",
            subtitle: "本地训导师+行为打卡",
            options: [
                ServiceOption(title: "行为课", description: "社会化+分离焦虑", priceHint: "¥199起/节", tag: "进阶"),
                ServiceOption(title: "体能课", description: "嗅闻+敏捷训练", priceHint: "¥159起/节", tag: "轻量")
            ]
        )
    ]

    static let aiActions: [AIDoctorAction] = [
        AIDoctorAction(title: "拍照问诊", description: "对准皮肤、眼睛或排泄物", detail: "AI 3秒初判 + 推荐下一步"),
        AIDoctorAction(title: "文字咨询", description: "输入症状或用药史", detail: "生成护理要点与注意事项"),
        AIDoctorAction(title: "紧急评估", description: "快速判断是否需要就诊", detail: "关联附近24小时宠物医院")
    ]

    static let aiProducts: [AIDoctorProduct] = [
        AIDoctorProduct(name: "皮肤护理套装", hint: "轻度皮屑/泛红", note: "含清洁湿巾+修护喷雾"),
        AIDoctorProduct(name: "肠胃益生菌", hint: "软便/换粮期", note: "支持7天肠胃调理"),
        AIDoctorProduct(name: "驱虫提醒", hint: "城市常见虫害", note: "自动生成月度驱虫计划")
    ]
}
