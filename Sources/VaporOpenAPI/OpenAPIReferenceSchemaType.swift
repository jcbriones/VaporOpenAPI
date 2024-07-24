//
//  OpenAPIReferenceSchemaType.swift
//  VaporOpenAPI
//
//  Created by Jc Briones on 7/22/24.
//

import OpenAPIReflection

public protocol OpenAPIReferenceSchemaType: OpenAPIEncodedSchemaType, Sendable {
    static var openAPIReferenceSchema: JSONSchema { get }
}

extension OpenAPIReferenceSchemaType {
    public static var openAPISchema: JSONSchema {
        .reference(.internal(.component(name: String(describing: Self.self))))
    }
}
