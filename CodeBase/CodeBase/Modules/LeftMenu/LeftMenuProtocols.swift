//
//  LeftMenuProtocols.swift
//  CodeBase
//
//  Created DINH VAN TIEN on 2/12/20.
//  Copyright © 2020 DINH VAN TIEN. All rights reserved.
//
//  Template generated by Tien Dinh

import Foundation

//MARK: Wireframe -
protocol LeftMenuWireframeProtocol: class {

}
//MARK: Presenter -
protocol LeftMenuPresenterProtocol: class {

    var interactor: LeftMenuInteractorInputProtocol? { get set }
}

//MARK: Interactor -
protocol LeftMenuInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol LeftMenuInteractorInputProtocol: class {

    var presenter: LeftMenuInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

//MARK: View -
protocol LeftMenuViewProtocol: class {

    var presenter: LeftMenuPresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}
