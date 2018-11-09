//
//  File.swift
//  Translate Demo
//
//  Created by Daniel Wu on 10/25/18.
//  Copyright © 2018 Daniel Wu. All rights reserved.
//

import Foundation
import Alamofire
import ROGoogleTranslate

public struct TranslateParams {
    
    public init() {
        
    }
    
    public init(source:String, target:String, text:String) {
        self.source = source
        self.target = target
        self.text = text
    }
    
    public var source = "en"
    public var target = "es"
    public var text = "Hello world"
}

public class TranslateController {
    
    public init() {
        
    }
    
    //API key
    private var apiKey = "AIzaSyCqaFXCzC5eggYyRf04ftWvxV7AXDwNOlc"
    private var baseurl = "https://translation.googleapis.com/language/translate/v2"
    
    //Translates text
    public func translate(params:TranslateParams, callback:@escaping (_ translatedText:String) -> ()) {
        
        //Encode text to be translated
        let urlEncodedText = params.text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        print(urlEncodedText!)
        
        //Send request to API
        Alamofire.request("\(self.baseurl)?key=\(self.apiKey)&q=\(urlEncodedText ?? "hello")&source=\(params.source)&target=\(params.target)&format=text", method: .post).responseJSON { response in
//            debugPrint(response)
            
            if let json = response.result.value {
                print("JSON: \(json)")
            }
            
        }
    }
}
