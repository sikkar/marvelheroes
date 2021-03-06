//
//  BasicRouterProtocol.swift
//  marvelheroes
//
//  Created by Angel on 7/3/21.
//

import UIKit

protocol BasicRouterProtocol: AnyObject {
    var viewController: UIViewController? { get }
    var openTransition: Transition? { get }

    func configure(openTransition: Transition?)
    func open(_ viewController: UIViewController, transition: Transition)
    func close(animated: Bool)
    func closeToRoot(animated: Bool)

    //Common routes
    func showAlert(with title: String, and message: String, handler: ((UIAlertAction) -> Void)?)
}

extension BasicRouterProtocol {
    func close(animated: Bool = true) {
        close(animated: animated)
    }
    func closeToRoot(animated: Bool = true) {
        closeToRoot(animated: animated)
    }
}
