{
luaLoader.enable = true;
clipboard.providers.wl-copy.enable = true;
  opts = {
    virtualedit = "block"; # Allow cursor to move where there is no text in visual block mode
    cursorline = true; # Highlight the line where the cursor is located
    #cmdheight = 1; # more space in the neovim command line for displaying messages
    showmode = false; # Dont show the editor mode in status line

    # Enable relative line numbers
    number = true;
    relativenumber = false; # Disable relative line numbers by default

    # Tab spacing 2 spaces
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;

    smartindent = true;
    wrap = true;

    # Smart indent on word wrap
    breakindent = true;

    # Undo stuff from days ago
    swapfile = false;
    backup = false;
    undofile = true;

    # Incremental search
    hlsearch = true;
    incsearch = true;

    # Better splitting
    splitbelow = true;
    splitright = true;

    # Enable ignorecase + smartcase for better searching
    ignorecase = true;
    smartcase = true; # Don't ignore case with capitals
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    # Better colors
    termguicolors = true;

    # Decrease updatetime
    updatetime = 50; # faster completion (4000ms default)

    # Enable the sign column to prevent the screen from jumping
    signcolumn = "yes";

    # Reduce which-key timeout to 250s
    timeoutlen = 250;

    scrolloff = 8; # Will never have less than 8 characters as you scroll down
    mouse = "a"; # Mouse

    # Set encoding type
    encoding = "utf-8";
    fileencoding = "utf-8";

    # Maximum number of items to show in the popup menu (0 means "use available screen space")
    pumheight = 0;

  };
}
