local response = fetch({
    url = "https://api.buss.lol/domains",
    method = "GET", -- HTTP REQUEST METHOD
    headers = { ["Content-Type"] = "application/json" },
    body = '{ "test": ' .. test .. '}' -- REQUEST BODY
}}
