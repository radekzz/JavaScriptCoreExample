//
//  DataSource.swift
//  JavaScriptCoreExample
//
//  Created by Gualtiero Frigerio on 19/11/2019.
//  Copyright © 2019 Gualtiero Frigerio. All rights reserved.
//

import Foundation

class HovnoSource {
    var jsHandler = JSCommunicationHandler()
    
    init() {
        if let javascriptUrl = Bundle.main.url(forResource: "hovno", withExtension: "js") {
            jsHandler.loadSourceFile(atUrl: javascriptUrl)
        }
    }
}

extension HovnoSource {
    
    func getHovno(_ hovno:String) -> String {
        
        if let value = jsHandler.callFunction(functionName: "getHovno", withData: hovno, type:String.self) {
            return value.toString()
        }
        else {
            return "ani " + hovno
        }
    }
}
