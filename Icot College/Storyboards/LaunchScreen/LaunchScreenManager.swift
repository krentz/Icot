//
//  LaunchScreenManager.swift
//  BetinBank
//
//  Created by Rafael Krentz Gonçalves on 4/2/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

class LaunchScreenManager {

    // MARK: - Properties

    static let instance = LaunchScreenManager(animationDurationBase: 1.3)

    var view: UIView?
    var parentView: UIView?

    let animationDurationBase: Double

    let logoViewTag = 1

    // MARK: - Lifecycle

    init(animationDurationBase: Double) {
        self.animationDurationBase = animationDurationBase
    }


    // MARK: - Animate

    func animateAfterLaunch(_ parentViewPassedIn: UIView) {
        parentView = parentViewPassedIn
        view = loadView()

        fillParentViewWithView()

        hideLogo()
        hideView()
    }

    func loadView() -> UIView {
        return UINib(nibName: "LaunchScreen", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

    func fillParentViewWithView() {
        parentView!.addSubview(view!)

        view!.frame = parentView!.bounds
        view!.center = parentView!.center
    }

    func hideLogo() {
        let logo = view!.viewWithTag(logoViewTag)!

        UIView.animate(
            withDuration: animationDurationBase / 2,
            delay: self.animationDurationBase / 4,
            options: .curveEaseOut,
            animations: {
                logo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            },
            completion: { _ in
                UIView.animate(
                    withDuration: self.animationDurationBase / 4,
                    delay: 0,
                    options: .curveEaseIn,
                    animations: {
                        logo.alpha = 0
                        logo.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                    }
                )
            }
        )
    }
    
    func hideView(){
        UIView.animate(withDuration: 0.8, delay: 1, options: .curveEaseIn, animations: {
            self.view!.alpha = 0
        }) { _ in
            self.view!.removeFromSuperview()
        }
    }

}

