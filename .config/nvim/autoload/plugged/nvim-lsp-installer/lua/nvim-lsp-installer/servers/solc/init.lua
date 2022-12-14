local server = require "nvim-lsp-installer.server"
local functional = require "nvim-lsp-installer.core.functional"
local platform = require "nvim-lsp-installer.core.platform"
local process = require "nvim-lsp-installer.core.process"
local github = require "nvim-lsp-installer.core.managers.github"
local std = require "nvim-lsp-installer.core.managers.std"

local coalesce, when = functional.coalesce, functional.when

return function(name, root_dir)
    return server.Server:new {
        name = name,
        root_dir = root_dir,
        homepage = "https://github.com/ethereum/solidity",
        languages = { "solidity" },
        installer = function()
            local source = github.release_file {
                repo = "ethereum/solidity",
                asset_file = coalesce(
                    when(platform.is_mac, "solc-macos"),
                    when(platform.is_linux, "solc-static-linux"),
                    when(platform.is_win, "solc-windows.exe")
                ),
            }
            source.with_receipt()
            local bin_name = platform.is_win and "solc.exe" or "solc"
            std.download_file(source.download_url, bin_name)
            std.chmod("+x", { bin_name })
        end,
        default_options = {
            cmd_env = {
                PATH = process.extend_path { root_dir },
            },
        },
    }
end
