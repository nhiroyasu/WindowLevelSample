import Foundation

class SampleListRepository {
    func getSampleList() -> [SampleContent] {
        [
            .init(pattern: .normal, executer: NormalWindowLevelExecuter()),
            .init(pattern: .floating, executer: FloatingWindowLevelExecuter()),
            .init(pattern: .dock, executer: DockWindowLevelExecuter()),
            .init(pattern: .cursor, executer: CursorWindowLevelExecutor()),
            .init(pattern: .maximum, executer: MaximumWindowLevelExecutor()),
            .init(pattern: .desktopIcon, executer: DesktopIconLevelExecutor()),
            .init(pattern: .desktop, executer: DesktopLevelExecutor())
        ]
    }
}
