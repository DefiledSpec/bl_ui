---@param iterations number The amount of iterations to run
---@param config LengthConfig
local function circleSum(iterations, config, playSound)
    local promise = promise:new()

    local result = StartGame(GameTypes.circleSum, iterations, config, playSound)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("CircleSum", circleSum)
