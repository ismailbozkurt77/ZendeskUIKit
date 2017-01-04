//
//  UIViewCustomConstraints.swift
//  ZendeskUIKit
//
//  Created by Ismail on 04/01/2017.
//  Copyright © 2017 Ismail Bozkurt. All rights reserved.
//

import UIKit

public extension UIView {
    
    public func heightConstraint(height: CGFloat) -> NSLayoutConstraint {
        let heightConstraint =
            NSLayoutConstraint(item: self,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .height,
                               multiplier: 1.0,
                               constant: height)
        self.addConstraint(heightConstraint)
        return heightConstraint
    }
    
    public func widthConstraint(width: CGFloat) ->NSLayoutConstraint {
        let widthConstraint =
            NSLayoutConstraint(item: self,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .width,
                               multiplier: 1.0,
                               constant: width)
        self.addConstraint(widthConstraint)
        return widthConstraint
    }
    
    public func leadConstraint(margin: CGFloat) -> NSLayoutConstraint {
        let leadConstraint =
        NSLayoutConstraint(item: self,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self.superview,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: margin)
        self.superview?.addConstraint(leadConstraint)
        return leadConstraint
    }
    
    public func trailingConstraint(margin: CGFloat) -> NSLayoutConstraint {
        let trailingConstraint =
        NSLayoutConstraint(item: self,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self.superview,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: margin)
        self.superview?.addConstraint(trailingConstraint)
        return trailingConstraint
    }
    
    public func topConstraint(margin: CGFloat) -> NSLayoutConstraint {
        let topConstraint =
            NSLayoutConstraint(item: self,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: self.superview,
                               attribute: .top,
                               multiplier: 1.0,
                               constant: margin)
        self.superview?.addConstraint(topConstraint)
        return topConstraint
    }
    
    public func bottomConstraint(margin: CGFloat) -> NSLayoutConstraint {
        let bottomConstraint =
        NSLayoutConstraint(item: self,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: self.superview,
                           attribute: .bottom,
                           multiplier: 1.0,
                           constant: margin)
        self.superview?.addConstraint(bottomConstraint)
        return bottomConstraint
    }
}
