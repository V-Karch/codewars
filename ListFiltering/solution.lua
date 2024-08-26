local function filter_list(l)
    local filtered = {}
    
    for index, value in ipairs(l) do
        if type(value) ~= "string" then
            table.insert(filtered, value)
        end
    end

    return filtered
end

return filter_list
