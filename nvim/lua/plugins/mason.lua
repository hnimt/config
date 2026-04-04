return {
    {
        "mason-org/mason.nvim",
        opts = {
            pip = {
                -- This forces Mason to use uv for all python-based package installs
                install_args = { "--index-url", "https://pypi.org/simple" }, 
            },
        },
    }
}
