// NL 2021

import Foundation
import Combine
import Solana

public extension Api {
    /// Asynchronously perform the given API request.
    @available(macOS 12.0, iOS 15.0, *)
    func perform<T: ApiTemplate>(_ request: T) async throws -> T.Success {
        return try await withCheckedThrowingContinuation { continuation in
            self.perform(request) { result in
                continuation.resume(with: result)
            }
        }
    }
}
