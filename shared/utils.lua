-- ╔═══════════════════════════════════════════════════════════════════════════════╗
-- ║                    ZX HORROR - SHARED UTILITIES                                ║
-- ╚═══════════════════════════════════════════════════════════════════════════════╝

Utils = {}

-- ═══════════════════════════════════════════════════════════════════════════════
-- DEBUG LOGGING
-- ═══════════════════════════════════════════════════════════════════════════════

function Utils.Log(message, type)
    type = type or 'INFO'
    local colors = {
        INFO = '^2',
        WARNING = '^3',
        ERROR = '^1',
        DEBUG = '^4',
        SUCCESS = '^2',
    }
    print((colors[type] or '^7') .. '[ZX_Horror - ' .. type .. ']^7 ' .. message)
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- DISTANCE CALCULATION
-- ═══════════════════════════════════════════════════════════════════════════════

function Utils.Distance(coords1, coords2)
    if not coords1 or not coords2 then return 999999 end
    return #(coords1 - coords2)
end

function Utils.IsNearby(coords1, coords2, radius)
    return Utils.Distance(coords1, coords2) <= radius
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- TABLE UTILITIES
-- ═══════════════════════════════════════════════════════════════════════════════

function Utils.TableContains(tbl, value)
    for _, v in ipairs(tbl) do
        if v == value then return true end
    end
    return false
end

function Utils.TableLength(tbl)
    local count = 0
    for _ in pairs(tbl) do count = count + 1 end
    return count
end

function Utils.DeepCopy(obj)
    if type(obj) ~= 'table' then return obj end
    local res = {}
    for k, v in pairs(obj) do
        res[Utils.DeepCopy(k)] = Utils.DeepCopy(v)
    end
    return res
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- ASYNC CALLBACK SYSTEM
-- ═══════════════════════════════════════════════════════════════════════════════

function Utils.Callback(eventName, data, callback)
    local callbackId = 'cb_' .. math.random(100000, 999999)
    TriggerEvent('zx_horror:callback:register', callbackId, callback)
    if IsDuplicityIndex() then
        TriggerClientEvent('zx_horror:callback:' .. eventName, -1, data, callbackId)
    else
        TriggerServerEvent('zx_horror:callback:' .. eventName, data, callbackId)
    end
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- STRING UTILITIES
-- ═══════════════════════════════════════════════════════════════════════════════

function Utils.Trim(str)
    return str:match('^%s*(.-)%s*$')
end

function Utils.Split(str, delimiter)
    local result = {}
    for match in (str .. delimiter):gmatch('(.-)' .. delimiter) do
        table.insert(result, match)
    end
    return result
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- MATH UTILITIES
-- ═══════════════════════════════════════════════════════════════════════════════

function Utils.Clamp(value, min, max)
    return math.min(math.max(value, min), max)
end

function Utils.Lerp(a, b, t)
    return a + (b - a) * t
end

function Utils.Random(min, max)
    return math.random(min, max)
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- NOTIFICATION SYSTEM
-- ═══════════════════════════════════════════════════════════════════════════════

function Utils.Notify(title, message, type)
    type = type or 'info'
    TriggerEvent('zx_horror:notify', title, message, type)
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- TIME UTILITIES
-- ═══════════════════════════════════════════════════════════════════════════════

function Utils.GetGameTime()
    return GetGameTimer()
end

function Utils.Wait(ms)
    return Wait(ms)
end

Utils.Log('Utilities module loaded', 'INFO')
