//
//  APICaller.swift
//  Netflix-UIKit
//
//  Created by Ozgun Dogus on 7.05.2023.
//

import Foundation

struct Constants {
    static let API_KEY = "344618ec1f6413483d7c54028ffc3af6"
    static let baseURL = "https://api.themoviedb.org/"
}

enum APIError {
    
    case failedToGetData
}

class APICaller {
    
        static let shared = APICaller()
    
    
 
    func getTrendingMovies (completion : @escaping (Result<[Movie],Error>) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _ , error  in
            guard let data = data ,  error == nil  else {
             return
            }
            
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                print(results.results)
            } catch
            {
                completion(.failure(error))
            }
            
            
           
 
        }
        task.resume()
    }
}
