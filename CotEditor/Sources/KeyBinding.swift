//
//  KeyBinding.swift
//
//  CotEditor
//  https://coteditor.com
//
//  Created by 1024jp on 2017-12-01.
//
//  ---------------------------------------------------------------------------
//
//  © 2017-2018 1024jp
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  https://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

struct KeyBinding: Codable {
    
    let action: Selector
    let shortcut: Shortcut?
}


extension KeyBinding: Hashable {
    
    func hash(into hasher: inout Hasher) {
        
        hasher.combine(self.action)
        hasher.combine(self.shortcut)
    }
    
}


extension KeyBinding: Comparable {
    
    static func == (lhs: KeyBinding, rhs: KeyBinding) -> Bool {
        
        return lhs.shortcut == rhs.shortcut && lhs.action == rhs.action
    }
    
    
    static func < (lhs: KeyBinding, rhs: KeyBinding) -> Bool {
        
        return lhs.action.description < rhs.action.description
    }
    
}
