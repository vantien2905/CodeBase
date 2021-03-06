//
//  FlashProtocols.swift
//  CodeBase
//
//  Created DINH VAN TIEN on 2/12/20.
//  Copyright © 2020 DINH VAN TIEN. All rights reserved.
//
//  Template generated by Tien Dinh

import Foundation

//MARK: Wireframe -
protocol FlashWireframeProtocol: class {

}
//MARK: Presenter -
protocol FlashPresenterProtocol: class {

    var interactor: FlashInteractorInputProtocol? { get set }
}

//MARK: Interactor -
protocol FlashInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol FlashInteractorInputProtocol: class {

    var presenter: FlashInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

//MARK: View -
protocol FlashViewProtocol: class {

    var presenter: FlashPresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}
