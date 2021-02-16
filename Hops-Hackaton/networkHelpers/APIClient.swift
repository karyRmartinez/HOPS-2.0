//
//  APIClient.swift
//  Hops-Hackaton
//
//  Created by Kary Martinez on 2/16/21.
//  Copyright © 2021 Kary Martinez. All rights reserved.
//

import Foundation

class NewsAPIManager {
    private init() {}
    static let manager = NewsAPIManager()
    
    func getRecipes(searchString: String, completionHandler: @escaping (Result<[Article], AppErrors>) -> Void) {
        
   let urlString =
"http://newsapi.org/v2/everything?q=vegan&from=2021-01-16&sortBy=english&apiKey=\(Secrets.NewsAPIKey)"
        
        print(urlString)
        guard let url = URL(string: urlString)else {
            completionHandler(.failure(.badURL))
            return
        }
        
        //network helper manager
        NetworkHelper.manager.performDataTask(withUrl: url, andMethod: .get) { (result) in
            switch result {
            case .failure(let error):
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let AzureOverAllData = try JSONDecoder().decode(Welcome.self, from: data)
                    completionHandler(.success(AzureOverAllData.articles))
                }catch{
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                }
            }
        }
    }
}
