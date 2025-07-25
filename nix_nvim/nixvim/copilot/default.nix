{
  plugins = {
    copilot-vim.enable = false;
    copilot-chat.enable = true;
  };
    plugins.copilot-lua = {
    settings = {
      advanced = {
         inlineSuggestCount = 3;
      };
      copilot = {
        suggestion = {
          enabled = false;
        };
        panel = {
          enabled = false;
        };
      };
    };
  };

  extraConfigLua = ''
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  '';
}
