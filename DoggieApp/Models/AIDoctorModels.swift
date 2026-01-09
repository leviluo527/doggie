import Foundation

struct AIDoctorAction: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let detail: String
}

struct AIDoctorProduct: Identifiable {
    let id = UUID()
    let name: String
    let hint: String
    let note: String
}
