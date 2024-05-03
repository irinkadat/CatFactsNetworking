## CatFactsNetworking 

This Swift module fetches fun facts about cats from the "Cat Fact" API ([https://catfact.ninja/](https://catfact.ninja/)).

### Usage
Here's how to integrate this module into your project:

1. **Import the module:**

```swift
import CatFactsNetworking
```
2. **Fetch cat facts:**

```swift
CatFactsNetworking.shared.fetchCatFacts { catFacts, error in
  if let error = error {
    // Handle the error
    print(error.localizedDescription)
    return
  }

  if let catFacts = catFacts {
    for catFact in catFacts {
      print(catFact.fact)
    }
  }
}
```
### Classes

The module provides three structs to interact with cat facts:

* **CatFactsNetworking:**
  * A singleton class responsible for fetching cat facts.
  * Use `CatFactsNetworking.shared` to access the shared instance.
  * The `fetchCatFacts` method retrieves cat facts from the API and calls the provided completion handler with the results (an array of `CatFact` objects or an error).

* **CatFactResponse:**
  * A struct representing the decoded JSON response structure from the "Cat Fact" API.
  * Contains an array of `CatFact` objects within the `data` property.

* **CatFact:**
  * A struct representing a single cat fact retrieved from the API.
  * Holds the actual cat fact string in the `fact` property.

### Requirements
* Swift 5.0 or later

