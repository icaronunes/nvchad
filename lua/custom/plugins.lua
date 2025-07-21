local plugins = {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  }, 
  {
    "mfussenegger/nvim-dap",
    config = function(_,opts)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },

    config = function(_, opts)
      local path = "~\\AppData\\Local\\nvim-data\\mason\\packages\\debugpy\\Scripts\\python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   ft = {"python"},
  --   opts = function ()
  --     return require "custom.configs.null-ls"
  --   end,
  -- },
  -- {
  --   "williamboman/mason.nvim",
  --   opts = {
  --     ensure_installed = {
  --       "black",
  --       "debugpy",
  --       "mypy",
  --       "ruff",
  --       "pyright",
  --     },
  --   },
  -- },
  { -- PQ TA PUXANDO ESSE PLUGINS DUAS VEZES?! 
    "neovim/nvim-lspconfig",
     config = function ()
       require "plugins.configs.lspconfig"
       require "custom.configs.lspconfig"
     end,
   },
   {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    keys = {
        {
        "<leader>op",
            function()
            local peek = require("peek")
                if peek.is_open() then
            peek.close()
            else
            peek.open()
            end
        end,
        desc = "Peek (Markdown Preview)",
        },
  },
    opts = { theme = "dark", app = "browser" },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = {"MarkdownPreview", "MarkdownPreviewStop"},
    lazy = false,
    build = function() vim.fn["mkdp#util#install"]() end,
    init = function()
        vim.g.mkdp_theme = 'dark'
    end
  },
}
return plugins
