//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct User: Codable {

    public var id: Int?
    /** Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. */
    public var username: String
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var products: [Product]?
    public var projects: [Project]?
    public var favouriteProducts: [Product]?
    public var favouriteRegion: [Region]?
    public var favouriteProjects: [Project]?
    public var favouriteGates: [Gate]?

    public init(id: Int? = nil, username: String, email: String? = nil, firstName: String? = nil, lastName: String? = nil, products: [Product]? = nil, projects: [Project]? = nil, favouriteProducts: [Product]? = nil, favouriteRegion: [Region]? = nil, favouriteProjects: [Project]? = nil, favouriteGates: [Gate]? = nil) {
        self.id = id
        self.username = username
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.products = products
        self.projects = projects
        self.favouriteProducts = favouriteProducts
        self.favouriteRegion = favouriteRegion
        self.favouriteProjects = favouriteProjects
        self.favouriteGates = favouriteGates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case username
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case products
        case projects
        case favouriteProducts = "favourite_products"
        case favouriteRegion = "favourite_region"
        case favouriteProjects = "favourite_projects"
        case favouriteGates = "favourite_gates"
    }

}
