// NL 2021

import Foundation
import Combine
import Solana

public extension Action {
    /// Asynchronously perform the given action.
    @available(macOS 12.0, iOS 15.0, *)
    func perform<T: ActionTemplate>(_ action: T) async throws -> T.Success {
        return try await withCheckedThrowingContinuation { continuation in
            self.perform(action) { result in
                continuation.resume(with: result)
            }
        }
    }
}
