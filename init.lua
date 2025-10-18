-- [[ Setting options ]]
require 'config.set'

-- [[ Basic Keymaps ]]
require 'config.remap'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'config.lazy'

-- [[ Configure and install all plugins ]]
require('Lazy').setup 'plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
