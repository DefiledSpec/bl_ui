---@param iterations number The amount of iterations to run
---@param config {duration: number}
local function waveMatch(iterations, config, playSound)
    local promise = promise:new()

    local result = StartGame(GameTypes.waveMatch, iterations, config, playSound)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("WaveMatch", waveMatch)