GetConnections = {}

function GetConnections:AddConnection(Name, Connection)
    if GetConnections[Name] then
        warn(Name)
    else
        GetConnections[Name] = Connection
    end
end

function GetConnections:RemoveConnection(Name)
    if GetConnections[Name] then
        GetConnections[Name] = nil
    else
        warn(Name)
    end
end

function GetConnections:ModifyConnection(Name, Act)
    if not GetConnections[Name] then
        warn(Name)
    else
        loadstring("GetConnections["..Name.."]:"..Act)
    end
end

return GetConnections
