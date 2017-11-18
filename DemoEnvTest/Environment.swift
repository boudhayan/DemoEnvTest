//
//  Environment.swift
//  DemoEnvTest
//
//  Created by Boudhayan Biswas on 18/11/17.
//  Copyright © 2017 Boudhayan Biswas. All rights reserved.
//

import Foundation

public enum PlistKey {
    case ServerURL
    case TimeoutInterval
    case ConnectionProtocol
    
    func value() -> String {
        switch self {
        case .ServerURL:
            return "server_url"
        case .TimeoutInterval:
            return "timeout_interval"
        case .ConnectionProtocol:
            return "protocol"
        }
    }
}
public struct Environment {
    
    fileprivate var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }
    public func configuration(_ key: PlistKey) -> String {
        switch key {
        case .ServerURL:
            return infoDict[PlistKey.ServerURL.value()] as! String
        case .TimeoutInterval:
            return infoDict[PlistKey.TimeoutInterval.value()] as! String
        case .ConnectionProtocol:
            return infoDict[PlistKey.ConnectionProtocol.value()] as! String
        }
    }
}
