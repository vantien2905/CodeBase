//
//  HomeProtocols.swift
//  CodeBase
//
//  Created DINH VAN TIEN on 2/12/20.
//  Copyright © 2020 DINH VAN TIEN. All rights reserved.
//
//  Template generated by Tien Dinh

import Foundation

//MARK: Wireframe -
protocol HomeWireframeProtocol: class {

}
//MARK: Presenter -
protocol HomePresenterProtocol: class {

    var interactor: HomeInteractorInputProtocol? { get set }
}

//MARK: Interactor -
protocol HomeInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol HomeInteractorInputProtocol: class {

    var presenter: HomeInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

//MARK: View -
protocol HomeViewProtocol: class {

    var presenter: HomePresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}
