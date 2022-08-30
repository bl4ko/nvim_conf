-- if !exists('g:loaded_nvim_treesitter')
--     echom "Not loaded treesitter"
--     finish
-- endif
require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "java",
        "python",
        "c",
        "json",
        "c_sharp",
        "dockerfile",
        "html",
        "javascript",
        "latex",
        "lua",
        "ocaml",
        "python",
        "vim",
        "typescript",
    },
    ignore_install = {
        "css",
        "vim",
        "bash"
    },
    highlight = {
        enable = true,
        disable = { "css", "vim", "bash" },
        additional_vim_regex_highlighting = {
            "css",
            "vim",
            "bash"
        }
    },
    indent = {
        enable = false,
        disable = {},
    }
}

