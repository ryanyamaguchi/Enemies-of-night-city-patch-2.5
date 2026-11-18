config = {}

function config.fileExists(filename)
    local f=io.open(filename,"r")
    if (f~=nil) then io.close(f) return true else return false end
end

function config.tryCreateConfig(path, data)
	if not config.fileExists(path) then
        local file = io.open(path, "w")
        if file ~= nil then
            local jconfig = json.encode(data)
            file:write(jconfig)
            file:close()
        end
    end
end

function config.loadFile(path)
    local file = io.open(path, "r")
    if file == nil then return nil end
    local content = file:read("*a")
    file:close()
    if content == nil or content == "" then return nil end
    local ok, decoded = pcall(json.decode, content)
    if not ok or type(decoded) ~= "table" then return nil end
    return decoded
end

function config.saveFile(path, data)
    local file = io.open(path, "w")
    if file ~= nil then
        local jconfig = json.encode(data)
        file:write(jconfig)
        file:close()
    end
end

function config.backwardComp(path, data)
    local loaded = config.loadFile(path)
    local f = {}
    if type(loaded) == "table" then
        local hasInvalidKey = false
        for k, _ in pairs(loaded) do
            if type(k) ~= "string" then
                hasInvalidKey = true
                break
            end
        end
        if not hasInvalidKey then
            for k, v in pairs(loaded) do
                if data[k] == nil or type(v) == type(data[k]) then
                    f[k] = v
                end
            end
        end
    end

    for k, e in pairs(data) do
        if f[k] == nil then
            f[k] = e
        end
    end

    config.saveFile(path, f)
end

return config
