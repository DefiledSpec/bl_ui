---@param iterations number The amount of iterations to run
---@param config InputConfig
local function digitDazzle(iterations, config, playSound)
    local promise = promise:new()

    local result = StartGame(GameTypes.digitDazzle, iterations, config, playSound)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("DigitDazzle", digitDazzle)