

import Combine

class StockListViewModel {
    
    // Use Combine instead RxSwift
    @Published var stocks: [Stock] = []
    @Published var errorMessage: String?
    @Published var loading = false
    
    var subscriber: Set<AnyCancellable> = .init()
    let usecase: StockUseCase
    
    // user 검색창 건들때
    func searchQueryChanged(query: String) {
        // loading 비동기 처리
        loading = true
        
        usecase.fetchStockPublisher(keywords: query).sink{ completion in
            
            self.loading = false
            
            switch completion {
            case .failure(let error):
                print("error: \(error )")
            case .finished: break
            }
        } receiveValue: { stocksResult in
            self.stocks = stocksResult.items
        }.store(in: &subscriber)
    }
    
    init(usecase: StockUseCase) {
        self.usecase = usecase
    }
}
