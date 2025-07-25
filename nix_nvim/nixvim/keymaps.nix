{
  globals.mapleader = " ";

  keymaps = [
    ### general keymaps
    ## n and i mode
    {
      mode = [ "n"  "i" ];
      key = "<C-s>";
      action = "<cmd>w<cr>";
      options.desc = "Save file";
    }
    {
      mode = [ "n"  "i" ];
      key = "<C-q>";
      action = "<cmd>q<cr>";
      options.desc = "Quit Neovim";
    }
    {
      mode = [ "n"  "i" ];
      key = "<C-a>";
      action = "<home><c-v><end>";
      options.desc = "Select all text";
    }
    {
      mode = [ "n"  "i" ];
      key = "<C-c>";
      action = "v%";
      options.desc = "Select all in brackets";
    }
    {
      mode = "v";
      key = "<C-x>";
      action = "d";
      options.desc = "Cut selection";
    }
    {
      mode = [ "n"  "i" ];
      key = "<C-v>";
      action = "<esc>p";
      options.desc = "Paste in normal mode";
    }
    
    ## n mode
    # search navigation 
    {
      mode = "n";
      key = "n";
      action = "nzz";
      options.desc = "Center cursor after search";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzz";
      options.desc = "Center cursor after reverse search";
    }
    {
      mode = "n";
      key = "<c-d>";
      action = "<c-d>zz";
      options.desc = "Scroll down and center cursor";
    }
    {
      mode = "n";
      key = "<c-u>";
      action = "<c-u>zz";
      options.desc = "Scroll up and center cursor";
    }
    # resize
    {
      mode = "n";
      key = "<S-Up>";
      action = "<cmd>resize +2<cr>";
      options.desc = "Increase window height";
    }
    {
      mode = "n";
      key = "<S-Down>";
      action = "<cmd>resize -2<cr>";
      options.desc = "Decrease window height";
    }
    {
      mode = "n";
      key = "<S-Left>";
      action = "<cmd>vertical resize -2<cr>";
      options.desc = "Decrease window width";
    }
    {
      mode = "n";
      key = "<S-Right>";
      action = "<cmd>vertical resize +2<cr>";
      options.desc = "Increase window width";
    }
    # window navigation
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-W>h";
      options.desc = "Move to left window";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-W>j";
      options.desc = "Move to below window";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-W>k";
      options.desc = "Move to above window";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-W>l";
      options.desc = "Move to right window";
    }
    # tab navigation
    {
      mode = "n";
      key = "H";
      action = "<cmd>tabprevious<cr>";
      options.desc = "Go to previous tab";
    }
    {
      mode = "n";
      key = "L";
      action = "<cmd>tabnext<cr>";
      options.desc = "Go to next tab";
    }

    ## v mode
    # indentation tricks
    {
      mode = "v";
      key = ">";
      action = ">gv";
      options.desc = "Indent selection";
    }
    {
      mode = "v";
      key = "<";
      action = "<gv";
      options.desc = "Unindent selection";
    }
    {
      mode = [ "n"  "v" ];
      key = "<C-cr>";
      action = ":SlimeSendCurrentLine<cr>";
      options.desc = "Send current line to terminal";
    }

    ## insert mode
    # R and Python code tricks
    {
      mode = "i";
      key = "<m-m>";
      action = " <- ";
      options.desc = "Insert ' <- ' in insert mode";
    }
    {
      mode = "i";
      key = "<m-a>";
      action = " %>% ";
      options.desc = "Insert ' %>% ' in insert mode";
    }
     ### which-key related settings
     #free options
     {
      mode = "n";
      key = "<leader>b";
      action = ":NvimTreeToggle<cr>";
      options.desc = "Toggle NvimTree";
    } 
    { 
      mode = [ "n"  "v" ];
      key = "<leader><cr>";
      action = ":SlimeSend<cr>";
      options.desc = "Send current line to terminal";
    }
    #code group
    {
      mode = [ "n"  "v" ];
      key = "<leader>cc";
      action = ":SlimeSendCurrentLine<cr>";
      options.desc = "Send current line to terminal";
    }
    {
      mode = [ "n"  "v" ];
      key = "<leader>cd";
      action = ":SlimeSend<cr>";
      options.desc = "Send current selection to terminal";
    }
    {
      mode = "n";
      key = "<leader>cr";
      action = "<esc>o```{r}<cr><cr><cr>```<esc>2kO";
      options.desc = "Insert R code chunk in insert mode";
    }
    {
      mode = "n";
      key = "<leader>cp";
      action = "<esc>o```{python}<cr><cr><cr>```<esc>2kO";
      options.desc = "Insert Python code chunk in insert mode";}


    #git group
    {
      mode = "n";
      key = "<leader>gl";
      action = ":tabnew term://lazygit<cr>";
      options.desc = "Open LazyGit";
    }
    #quarto group
    {
      mode = "n";
      key = "<leader>qr";
      action = ":!quarto render %<cr>";
      options.desc = "Render Quarto document";
    }
    {
      mode = "n";
      key = "<leader>qf";
      action = ":!quarto preview %<cr>";
      options.desc = "Preview Quarto document";
    }
    #telescope group
    {
      mode = "n";
      key = "<leader>ff";
      action = ":Telescope find_files<cr>";
      options.desc = "Find files with Telescope";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = ":Telescope live_grep<cr>";
      options.desc = "Live grep with Telescope";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = ":Telescope buffers<cr>";
      options.desc = "Find buffers with Telescope";
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = ":Telescope help_tags<cr>";
      options.desc = "Find help tags with Telescope";
    }
    {
      mode = "n";
      key = "<leader>fk";
      action = ":Telescope keymaps<cr>";
      options.desc = "Find keymaps with Telescope";
    }
    {
      mode = "n";
      key = "<leader>fm";
      action = ":Telescope marks<cr>";
      options.desc = "Find marks with Telescope";
    }
    {
      mode = "n";
      key = "<leader>fq";
      action = ":Telescope quickfix<cr>";
      options.desc = "Find quickfix items with Telescope";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = ":Telescope registers<cr>";
      options.desc = "Find registers with Telescope";
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = ":Telescope colorscheme<cr>";
      options.desc = "Find colorschemes with Telescope";
    }
    #group copilot
    {
      mode = "n";
      key = "<leader>ac";
      action = ":CopilotChat ";
      options.desc = "Chat with Copilot";
    }
    {
      mode = "n";
      key = "<leader>ad";
      action = ":Copilot disable<cr>";
      options.desc = "Disable Copilot";
    }
    {
      mode = "n";
      key = "<leader>ae";
      action = ":Copilot enable<cr>";
      options.desc = "Enable Copilot";
    }
    {
      mode = "n";
      key = "<leader>ap";
      action = ":Copilot panel<cr>";
      options.desc = "Copilot panel";
    }
    {
      mode = "v";
      key = "<leader>ae";
      action = ":CopilotChatExplain<cr>";
      options.desc = "Explain selection with Copilot";
    }
    {
      mode = "v";
      key = "<leader>ao";
      action = ":CopilotOptimize<cr>";
      options.desc = "Optimize selection with Copilot";
    }
    #tab group
    {
      mode = "n";
      key = "<leader>tn";
      action = ":tabnew<cr>";
      options.desc = "New tab";
    }
    {
      mode = "n";
      key = "<leader>to";
      action = ":tabonly<cr>";
      options.desc = "close all [o]ther tabs";
    }
    {
      mode = "n";
      key = "<leader>tc";
      action = ":tabclose<cr>";
      options.desc = "[c]lose current tab";
    }
    {
      mode = "n";
      key = "<leader>te";
      action = ":tabnext<cr>";
      options.desc = "n[e]xt tab";
    }
    ];
}
