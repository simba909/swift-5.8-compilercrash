import Foundation

protocol Versionable: AnyVersionable {
    associatedtype PreviousVersion: Versionable

    init(from previousVersion: PreviousVersion) throws
}

protocol AnyVersionable: Codable {
    static var previousVersion: AnyVersionable.Type? { get }
    init(from previousVersion: AnyVersionable) throws
}

/// Default implementation for version 0.
extension Versionable where PreviousVersion == Self {
    init(from previousVersion: Self) { self = previousVersion }
}
