//
//  UIApprication+Extension.swift
//  ToDo
//
//  Created by Kikuchi Yuichi on 2020/12/13.
//

import SwiftUI

extension UIApplication {
    func closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil,
                   from: nil,
                   for: nil)
    }
}
