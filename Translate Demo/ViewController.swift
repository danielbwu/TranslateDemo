//
//  ViewController.swift
//  Translate Demo
//
//  Created by Daniel Wu on 10/25/18.
//  Copyright © 2018 Daniel Wu. All rights reserved.
//

import UIKit
import ROGoogleTranslate

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        print("Hello World\n")
        var source: String = "en"
        var target: String = "es"
        var text: String = "Hello my name is Daniel"
        
        // Prompt input
//        print("Enter text to be translated: ")
//        if let input = readLine() {
//            print("Translating to \(target)")
//            text = input
//        }
//
//        print("Enter source language: ")
//        source = readLine()!
//
//        print("Enter target language: ")
//        target = readLine()!
        
        
        
        let params = ROGoogleTranslateParams(source: source,
                                             target: target,
                                             text: text)

        let translator = ROGoogleTranslate()

        translator.translate(params: params) { (result) in
            print("Translation: \(result)")

        }
        
        //My controller
//        let myParams = TranslateParams(source: "en",
//                                       target: "es",
//                                       text: "Hello world")
//
//        let trans = TranslateController()
//
//        trans.translate(params: myParams) { (result) in
//
//        }
    }

    func translate() {
        
    }

}

