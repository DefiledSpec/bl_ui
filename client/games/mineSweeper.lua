---@param iterations number The amount of iterations to run
---@param config GridConfig
local function mineSweeper(iterations, config, playSound)
    local promise = promise:new()

    local result = StartGame(GameTypes.mineSweeper, iterations, config, playSound)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("MineSweeper", mineSweeper)