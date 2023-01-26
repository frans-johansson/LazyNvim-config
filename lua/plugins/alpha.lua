return {
  -- Mostly a copy-paste from https://www.lazyvim.org/plugins/ui#alpha-nvim
  -- I just want to update the logo really
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
        ___   __    _  _______  _______         _______  ______    _______  __    _  _______        __    _  __   __  ___   __   __ 
        |   | |  |  | ||       ||       |       |       ||    _ |  |   _   ||  |  | ||       |      |  |  | ||  | |  ||   | |  |_|  |
        |   | |   |_| ||_     _||    ___| ____  |    ___||   | ||  |  |_|  ||   |_| ||  _____|      |   |_| ||  |_|  ||   | |       |
        |   | |       |  |   |  |   |___ |____| |   |___ |   |_||_ |       ||       || |_____       |       ||       ||   | |       |
        |   | |  _    |  |   |  |    ___|       |    ___||    __  ||       ||  _    ||_____  | ___  |  _    ||       ||   | |       |
        |   | | | |   |  |   |  |   |___        |   |    |   |  | ||   _   || | |   | _____| ||   | | | |   | |     | |   | | ||_|| |
        |___| |_|  |__|  |___|  |_______|       |___|    |___|  |_||__| |__||_|  |__||_______||___| |_|  |__|  |___|  |___| |_|   |_|
      ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        dashboard.button("s", "勒" .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.footer.opts.hl = "Type"
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
  },
}
