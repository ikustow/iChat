//
//  WaitingChatCell.swift
//  iChat
//
//  Created by Ilya on 24.10.2020.
//

import UIKit

class WaitingChatCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseId: String = "WaitingChatCell"
    
    func configure(with value: MChat) {
        print("123")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
