//
//  madlibs class.swift
//  Mad Lips App
//
//  Created by DANIEL VEGA on 10/14/21.
//

import Foundation

class Madlibs {
    
    var noun: String
    var adjective: String
    var verb: String
    var type: String
    var end = ""
    init(n: String, a: String, v: String, t: String){
        noun = n
        adjective = a
        verb = v
        type = t
    }
    
    func foodSentence() -> String{
        let sentence = "The \(adjective) \(noun) very much \(verb) my hunger"
        end = sentence
        return sentence
    }
    
    func soccerSentence() -> String{
        let sentence = "The \(adjective) soccer player \(verb) because his \(noun) told him to"
        end = sentence
        return sentence
    }
    
    func compsciSentence() -> String{
        let sentence = "\(verb) the computer lets \(adjective) \(noun) improve their skills"
        end = sentence
        return sentence
    }
    
    
    
    
}
