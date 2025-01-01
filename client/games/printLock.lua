---@param iterations number The amount of iterations to run
---@param config GridConfig
local function printLock(iterations, config, playSound)
    local promise = promise:new()

    local result = StartGame(GameTypes.printLock, iterations, config, playSound)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("PrintLock", printLock)

