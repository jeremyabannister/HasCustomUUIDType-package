//
//  HasCustomUUIDType.swift
//
//
//  Created by Jeremy Bannister on 7/28/24.
//

///
@_exported import DistinctType_module


///
public protocol HasCustomUUIDType { }

///
extension HasCustomUUIDType {
    
    ///
    public typealias ID = DistinctType<UUID, Self>
}

///
extension HasCustomUUIDType {
    
    ///
    public typealias DictByID = Dictionary<ID, Self>
}
