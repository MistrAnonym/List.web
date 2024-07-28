local query = get("query")
local cards = get("card", true);

local links = get("link", true)
local descriptions = get("desc", true)
local domains = get("domain", true)

local visible = false;

query.on_submit(function(content)
    cards_thing()

    local res = fetch({
		url = "https://api.buss.lol/domains",
		method = "GET",
		headers = { ["Content-Type"] = "application/json" },
	})
    print(res)
    for k, v in pairs(res) do
        local link = links[k];
        local desc = descriptions[k];
        local domain = domains[k];
        
        local URL = string.format(v["name"]);

        domain.set_content(URL)
        link.set_content(v["name"])
        link.set_href("buss://" .. v["name"] .. "." .. v["tld")
        desc.set_content("Work in progress"])
    end
end)
