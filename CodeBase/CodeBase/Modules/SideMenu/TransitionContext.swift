//
//  TransitionContext.swift
//  Vebrary
//
//  Created by DINH VAN TIEN on 5/6/19.
//  Copyright © 2019 DINH VAN TIEN. All rights reserved.
//

import UIKit

/// A internal transitioning context used for triggering the transition animation
extension SideMenuController {
    class TransitionContext: NSObject, UIViewControllerContextTransitioning {
        var isAnimated = true
        var targetTransform: CGAffineTransform = .identity

        let containerView: UIView
        let presentationStyle: UIModalPresentationStyle

        private var viewControllers = [UITransitionContextViewControllerKey: UIViewController]()

        var isInteractive = false

        var transitionWasCancelled: Bool {
            // Our non-interactive transition can't be cancelled
            return false
        }

        var completion: ((Bool) -> Void)?

        init(with fromViewController: UIViewController, toViewController: UIViewController) {
            guard let superView = fromViewController.view.superview else {
                fatalError("fromViewControlelr's view should have a parent view")
            }
            presentationStyle = .custom
            containerView = superView
            viewControllers = [
                .from: fromViewController,
                .to: toViewController
            ]

            super.init()
        }

        func completeTransition(_ didComplete: Bool) {
            completion?(didComplete)
        }

        func viewController(forKey key: UITransitionContextViewControllerKey) -> UIViewController? {
            return viewControllers[key]
        }

        func view(forKey key: UITransitionContextViewKey) -> UIView? {
            switch key {
            case .from:
                return viewControllers[.from]?.view
            case .to:
                return viewControllers[.to]?.view
            default:
                return nil
            }
        }

        // swiftlint:disable identifier_name
        func initialFrame(for vc: UIViewController) -> CGRect {
            return containerView.frame
        }

        func finalFrame(for vc: UIViewController) -> CGRect {
            return containerView.frame
        }

        // MARK: Interactive, not supported yet

        func updateInteractiveTransition(_ percentComplete: CGFloat) {}
        func finishInteractiveTransition() {}
        func cancelInteractiveTransition() {}
        func pauseInteractiveTransition() {}
    }
}
