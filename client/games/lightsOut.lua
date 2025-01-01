---@param iterations number The amount of iterations to run
---@param config LevelConfig
local function lightsOut(iterations, config, playSound)
    local promise = promise:new()

    local result = StartGame(GameTypes.lightsOut, iterations, config, playSound)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("LightsOut", lightsOut)