--- KeySpam Game
---@param iterations number The amount of iterations to run
---@param difficulty number The difficulty of the game (1-100)
---@return boolean
local function keySpam(iterations, difficulty, playSound)
    local promise = promise:new()

    ---@type DifficultyConfig
    local config = {
        difficulty = difficulty or 50,
    }

    local result = StartGame(GameTypes.keySpam, iterations, config, playSound)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("KeySpam", keySpam)