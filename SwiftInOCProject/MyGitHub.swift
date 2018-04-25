//
//  MyGitHub.swift
//  SwiftInOCProject
//
//  Created by yuchen on 2018/4/25.
//  Copyright © 2018年 yuchen. All rights reserved.
//

import Foundation

struct MyGitHub: Codable {
    
    let name: String?
    let location: String?
    let followers: Int?
    let avatarUrl: URL?
    let repos: Int?
    
    private enum CodingKeys: String, CodingKey {
        case name
        case location
        case followers
        case repos = "public_repos"
        case avatarUrl = "avatar_url"
        
    }
}

@objc public class RunSwiftCode: NSObject {
    static func run() -> Void {
        guard let gitUrl = URL(string: "https://api.github.com/users/machinefixer") else { return }
        URLSession.shared.dataTask(with: gitUrl) { (data, response
            , error) in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(MyGitHub.self, from: data)
                print(gitData.name!)
                print(gitData.followers!)
            } catch let err {
                print("Err", err)
            }}.resume()
    }
    
    public override init() {
        super.init()
        let demoInstance = DemoClass()
        
        // Call objective-c method from swift
        print("Calling Objective-C method from Swift:")
        demoInstance.sayMyName()
    }
}


