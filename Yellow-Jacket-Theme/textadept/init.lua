
-- ::THEME::

-- Non terminal theme setting
if not CURSES then
	view:set_theme('custom', {font = 'Hack', size = 14})
end

-- Terminal theme setting
if CURSES then 
	view:set_theme('term', {font = 'Hack', size = 14})
end

-- Tab sizes
buffer.use_tabs = false
buffer.tab_width = 4

-- ::MODULES::

    -- Lsp client
    local lsp = require("lsp")
    
    
        -- C lsp
        lsp.server_commands.ansi_c = "clangd"
        lsp.server_commands.cpp = "clangd"
        
        -- Lua lsp
        lsp.server_commands.lua = "lua-language-server"
        
        
        -- Lsp config
        lsp.autocomplete_num_chars = 1 -- How many charicter needed to type before auto complete does its thing
        -- Whether or not you get anotations for errors, i prefer compiler errors before lsp
        lsp.show_diagnostics = false
        lsp.log_rpc = false

    

    
    -- Yah
    local ctl = require("ctl") -- Plugin to find c types and add them to the lexer



-- ::KEY BINDINGS::

    keys["ctrl+h"] = reset    
