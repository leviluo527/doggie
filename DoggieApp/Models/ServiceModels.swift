import Foundation

struct ServiceCategory: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let options: [ServiceOption]
}

struct ServiceOption: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let priceHint: String
    let tag: String
}
