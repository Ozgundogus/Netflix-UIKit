//
//  Extensions.swift
//  Netflix-UIKit
//
//  Created by Ozgun Dogus on 10.05.2023.
//

import Foundation

extension String {
    
    func capatalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
}
    
    
