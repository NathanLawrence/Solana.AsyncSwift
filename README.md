# Solana.AsyncSwift

Extend the functionality of Solana.Swift with Swift Structured Concurrency support.

## In Use

Add `Solana.AsyncSwift` to your Swift packages, then simply import `AsyncSolana`. Then, you can await calls to action templates and API request templates.

Calls are made by providing an `ActionTemplate` or `ApiTemplate` to an `Action` or `Api` object with the `perform(_:) async throws` method.

```swift
import Foundation
import Solana
import AsyncSolana

public class SolanaDemoViewModel: ObservableObject {
    func getAccountInfo() async throws -> [Wallet] {
        // configure the "Action" class exactly as you would normally
        let action = Action(...) 
        
        // Build a request with the ActionTemplate representing what you want to do.
        let request = ActionTemplates.GetTokenWallets(...) 
        
            // Ask the Action class to asynchronously fetch your request's results.
        return try await action.perform(request)
    }
}
```
