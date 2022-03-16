//
//  DataSource.swift
//  JavaScriptCoreExample
//
//  Created by Gualtiero Frigerio on 19/11/2019.
//  Copyright © 2019 Gualtiero Frigerio. All rights reserved.
//

import Foundation

class MyCustomJSSource {
    var jsHandler = JSCommunicationHandler()
    
    init() {
        if let javascriptUrl = Bundle.main.url(forResource: "myCustomJavascript", withExtension: "js") {
            jsHandler.loadSourceFile(atUrl: javascriptUrl)
        }
    }
}

extension MyCustomJSSource {
    
    func getStringFromJs(_ myString:String) -> String {
        
        if let value = jsHandler.callFunction(functionName: "getStringFromJs", withData: myString, type:String.self) {
            return value.toString()
        }
        else {
            return "ani " + myString
        }
    }
}
