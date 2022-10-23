import Foundation

struct SampleContent: Hashable {
    private let uuid: UUID = .init()
    let pattern: WindowLevelPattern
    let executer: SampleExecutable

    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }

    static func == (lhs: SampleContent, rhs: SampleContent) -> Bool {
        lhs.uuid == rhs.uuid
    }
}
