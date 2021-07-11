import Combine
import Foundation

class StockRepositoryImpi: StockRepository {
    let apiKey: String = "IKZ48BPTLT0X0WUU"
    let decoder = JSONDecoder()
    
    //검색어로 들어온 데이터 param으로 등록하여 fetch 처리
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult, Error>{
        let urlString = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=\(keywords)&apikey=\(apiKey)"
        
        let url = URL(string: urlString)!
        
        return URLSession.shared.dataTaskPublisher(for: url).map{ $0.data }
            .decode(type: StockResult.self, decoder: decoder)
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
