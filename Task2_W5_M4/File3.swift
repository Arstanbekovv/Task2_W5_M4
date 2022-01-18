//
//  File3.swift
//  Task2_W5_M4
//
//  Created by Aziz on 16/1/22.
//

import Foundation
import UIKit

class CustonButton: UIButton {
    
    private var onClick: (CustonButton) -> Void = { _ in }
    
    func setOnClickListener(onClick: @escaping (CustonButton) -> Void) {
        self.onClick = onClick
        
        addTarget(nil, action: #selector(clickButton(view:)), for: .touchUpInside)
    }
    
    @objc func clickButton(view: UIButton) {
        onClick(self)
    }
}
