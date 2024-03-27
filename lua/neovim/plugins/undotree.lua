local M = {
    "mbbill/undotree"
}

function M.config()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
end
return M

--alternative way
--[[
--return {
    "mbbill/undotree",

    config = function() 
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}
]]--
