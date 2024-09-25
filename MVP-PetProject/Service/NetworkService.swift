//
//  NetworkService.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
}

final class NetworkService {
    
    func fetchUsers(completion: @escaping (Result<[UserModel], Error>) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            do {
                let users = try JSONDecoder().decode([UserModel].self, from: data)
                completion(.success(users))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
