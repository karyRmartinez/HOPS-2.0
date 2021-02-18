//
//  VeganMakeuoAPIClient.swift
//  Hops-Hackaton
//
//  Created by Kary Martinez on 2/18/21.
//  Copyright © 2021 Kary Martinez. All rights reserved.
//

import Foundation
struct MakeupAPIClient {
    static let manager = MakeupAPIClient()
    
    func getElements(completionHandler: @escaping (Result<[VeganMakeUpElement], AppErrors>) -> ()) {
        NetworkHelper.manager.performDataTask(withUrl: MakeupUrl, andMethod: .get) { (result) in
            switch result {
            case .failure(let error) :
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let ElementInfo = try JSONDecoder().decode([VeganMakeUpElement].self, from: data)
                    completionHandler(.success(ElementInfo))
                } catch {
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                    

                }
            }
        }
    }
    
    private var MakeupUrl: URL {
        guard let url = URL(string: "https://makeup-api.herokuapp.com/api/v1/products.json?product_vegan") else {
            fatalError("Invalid URL")
        }
        return url
    }
    
    private init() {}
}
 
