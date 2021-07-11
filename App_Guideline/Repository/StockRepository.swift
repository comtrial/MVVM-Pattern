
import  Combine
//combine을 이용한
protocol StockRepository {
    
    //검색어로 들어온 데이터 param으로 등록하여 fetch 처리
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult, Error>
}
