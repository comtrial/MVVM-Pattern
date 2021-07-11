//
//  BaseViewController.swift
//  App_Guideline
//
//  Created by 최승원 on 2021/07/11.
//

import UIKit
import Combine
import RxSwift

// 중복되는 controller
class BaseViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    var subscriber: Set<AnyCancellable> = .init()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        configureUI()
    }
    
    func configureUI() {
        
    }
}
