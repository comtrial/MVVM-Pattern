import UIKit

// Tableview 형성
class StockListView: HomeView {
    let tableview: UITableView = {
        let view = UITableView()
        view.backgroundColor = .systemBackground
        
        return view
    }()
    
    //SearchBar View
    let searchViewController: UISearchController = {
        let view = UISearchController(searchResultsController: nil)
        view.searchBar.placeholder = "Enter 회사 및 주식"
        view.obscuresBackgroundDuringPresentation = false
        
        return view
    }()
    
    override func configureUI() {
        
        addSubview(tableview)
       
        tableview.translatesAutoresizingMaskIntoConstraints = false
        
        tableview.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableview.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableview.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        
    }
}
