-- Charge les options, keymaps et autocmds avant les plugins
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Bootstrap lazy.nvim
require("config.lazy")
