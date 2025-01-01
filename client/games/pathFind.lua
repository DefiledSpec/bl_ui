---@param iterations number The amount of iterations to run
---@param config NodeConfig
local function pathFind(iterations, config, playSound)
    local promise = promise:new()

    local result = StartGame(GameTypes.pathFind, iterations, config, playSound)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("PathFind", pathFind)