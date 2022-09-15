//
//  CardTransitionManager.swift
//  AppleAppStore
//
//  Created by mac on 04/08/2022.
//  Copyright © 2022 Hassan Ramadan Ali. All rights reserved.
//

import UIKit

class CardTransitionManager: NSObject{
    
    
}

extension CardTransitionManager: UIViewControllerAnimatedTransitioning{
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return TimeInterval()
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
    }
    
}

extension CardTransitionManager: UIViewControllerTransitioningDelegate{
    
}
