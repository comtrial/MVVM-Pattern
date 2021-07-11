//
//  CompositionRoot.swift
//  App_Guideline
//
//  Created by 최승원 on 2021/07/11.
//

// 메모리 효육적 사용
struct AppDependency {
    let mainCoordinator: MainCoordinator
}

extension AppDependency {
    static func resolve() -> AppDependency {
        
        let stockRepository: StockRepository = StockRepositoryImpi()
        
        let stockListControllerFactory: () -> StockListController = {
            
            let usecase = StockUseCase(stockRepository: stockRepository)
            let viewModel = StockListViewModel(usecase: usecase)
            
            return .init(dependency: .init(viewModel: viewModel))
        }
        
        let mainCoordinator: MainCoordinator = .init(dependency: .init(stockListControllerFactory: stockListControllerFactory))
        
        return .init(mainCoordinator: mainCoordinator)
    }
}

