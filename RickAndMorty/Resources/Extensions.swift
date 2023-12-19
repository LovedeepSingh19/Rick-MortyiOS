//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Lovedeep on 19/12/23.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
