import Foundation

public class CatFactsNetworking {
    public init() {}
    public static let shared = CatFactsNetworking()
    public let baseURL = URL(string: "https://catfact.ninja/facts?max_length=150&limit=100")!
    
    public func fetchCatFacts(completion: @escaping ([CatFact]?, Error?) -> Void) {
        let task = URLSession.shared.dataTask(with: baseURL) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil, error)
                return
            }
            
            do {
                let catFactResponse = try JSONDecoder().decode(CatFactResponse.self, from: data)
                let catFacts = catFactResponse.data
                completion(catFacts, nil)
            } catch {
                completion(nil, error)
            }
        }
        task.resume()
    }
}

public struct CatFactResponse: Decodable {
    public let data: [CatFact]
}

public struct CatFact: Decodable {
    public let fact: String
}
