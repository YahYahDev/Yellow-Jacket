
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
    
    --[[TODO:
        *get lua lsp working
        
        NOTES:
        
            1): lsp's only start if directory has a .git folder to indicate it is a project
    ]]
        
    local lsp = require("lsp")
    
        -- Python lsp
        lsp.server_commands.python = "pylsp"
    
        -- Java lsp
        lsp.server_commands.java = "jdtls"
        
        -- C lsp
        lsp.server_commands.ansi_c = "clangd"
        lsp.server_commands.cpp = "clangd"
        
        -- Glsl lsp
        lsp.server_commands.glsl = "glslls"
        
        -- Lua lsp
        --lsp.server_commands.lua = "/home/xirishpvp/.luarocks/bin/./lua-lsp"
        lsp.server_commands.lua = "lua-language-server"
        
        lsp.server_commands.d = "serve-d"
        
        -- Lsp config
        lsp.show_completions = true -- Show auto comptions options?
        lsp.autocomplete_num_chars = nil -- How many charicter needed to type before auto complete does its thing
        -- Whether or not you get anotations for errors, i prefer compiler errors before lsp
        lsp.show_diagnostics = false
        lsp.show_completions = true
        lsp.log_rpc = true

    

    
    -- Ctl
    local ctl = require("ctl") -- Plugin to find c types and add them to the lexer
                               -- Note i made this my self and i need to modify it to be better

    -- Dfs
    local dfs = require("dfs") -- Plugin to display folder structure of a project

    -- Ckeys
    local ckeys = require("ckeys")
    
    -- Lfs
    local lfs = require("lfs")
    
    
-- ::KEY BINDINGS::
    keys["ctrl+h"] = reset    
    
    
    -- Custom Keybindings.
    
    keys["ctrl+q"] = ckeys.BufferQuit           -- [01] - Closes buffer.
    
    keys["alt+right"] = ckeys.BufferNext        -- [02] - Cycles next buffer.

    keys["alt+left"] = ckeys.BufferLast         -- [03] - Cycles last buffer.
    
    keys["alt+w"] = ckeys.ViewCycle             -- [04] - Cycle views. 
    
    keys["alt+q"] = ckeys.ViewUnsplit           -- [05] - Unsplit views.
    
    keys["alt+a"] = ckeys.ViewVirticalSplit     -- [06] - Virtical split view.
    
    keys["alt+d"] = ckeys.ViewHorizontalSplit   -- [07] - Horizontal split view.

    keys["alt+up"] = dfs.Toggle                 -- [08] - Open file browser.
