return {
    {
        "mason-org/mason.nvim",
        opts = {
            log_level = vim.log.levels.DEBUG,
            pip = {
                -- This forces Mason to use uv for all python-based package installs
                install_args = { "--index-url", "https://pypi.org/simple" }, 
            },
        },
    }
}

