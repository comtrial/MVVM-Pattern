//
//  StockUseCase.swift
//  App_Guideline
//
//  Created by 최승원 on 2021/07/11.
//

import Foundation
import Combine

class StockUseCase {
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult, Error>{
        
        return stockRepository.fetchStockPublisher(keywords: keywords)
    }
    
    private let stockRepository: StockRepository
    
    init(stockRepository: StockRepository) {
        self.stockRepository = stockRepository
    }
}
