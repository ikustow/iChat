//
//  SelfConfiguringCell.swift
//  iChat
//
//  Created by Ilya on 24.10.2020.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String {get}
    func configure(with value: MChat)
}
