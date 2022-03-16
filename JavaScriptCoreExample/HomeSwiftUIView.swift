//
//  HomeSwiftUIView.swift
//  JavaScriptCoreExample
//
//  Created by Radek Mezulanik on 16.03.2022.
//  Copyright © 2022 Gualtiero Frigerio. All rights reserved.
//

import SwiftUI

struct HomeSwiftUIView: View {
    let myCustomJsSource = MyCustomJSSource()
    
    var body: some View {
        VStack {
            Text("Call function in external JS")
            Button(action: {
                let result = myCustomJsSource.getStringFromJs("message")
                print(result)
            }) {
                Text("Wut is in console??")
            }
        }
    }
}

struct HomeSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSwiftUIView()
    }
}
