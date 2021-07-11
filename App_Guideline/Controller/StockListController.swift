import UIKit
import Pure
import RxSwift
import RxCocoa

class StockListController: BaseViewController, FactoryModule {
    
    //StockListViewModel을 주입 받아서 사용
    struct Dependency {
        let viewModel: StockListViewModel
    }
    
    // View에서 StockListView 불러옴
    let selfView = StockListView()
    // StockListViewModel 주입
    let viewModel: StockListViewModel
    
    required init(dependency: Dependency, payload: ()) {
        viewModel = dependency.viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implement")
    }
    
    //viewModel 과 Model을 Binding
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    override func configureUI() {
                
        view.addSubview(selfView)
        selfView.translatesAutoresizingMaskIntoConstraints = false
        
        selfView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        selfView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        selfView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        selfView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        // searchbar 구동을 위해서 Delegate 지정해줘야함
        
        selfView.searchViewController.delegate = self
        selfView.searchViewController.searchResultsUpdater = self
        navigationItem.searchController = selfView.searchViewController
    }
    
    //viewModel 과 Model을 Binding
    func bind() {
        
        selfView.searchViewController.searchBar.rx.text
            .debounce(.microseconds(300), scheduler: MainScheduler.instance)
            .subscribe(onNext: {
                text in
                guard let text = text, !text.isEmpty else { return }
                self.viewModel.searchQueryChanged(query: text)
            }).disposed(by: disposeBag)
        
        //Combine 으로 상태관리 진행
        viewModel.$errorMessage.sink{ erroMessage in
            guard let message = erroMessage, !message.isEmpty else { return }
            print("err: \(message)")
        }.store(in: &subscriber)
        
        viewModel.$stocks.sink{ stocks in
            print("stocks: \(stocks)")
        }.store(in: &subscriber)
        
        viewModel.$loading.sink{ loading in
            print("loading: \(loading)")
        }.store(in: &subscriber)
    }
    
}

//searchbar delegate 등록
extension StockListController: UISearchControllerDelegate {
    
}

extension StockListController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}
