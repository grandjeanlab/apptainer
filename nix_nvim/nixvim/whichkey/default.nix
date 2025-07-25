{
  plugins.which-key = {
  enable = true;
  settings = {
    icons = {
      breadcrumb = "»";
      group = "+";
      separator = ""; # ➜
    };
    win = {
      border = "rounded";
      padding = [
        1
        1
      ];      
    };
          spec = [
	   {
	   __unkeyed-1 = "<leader>c";
	   group = "code";
	   icon = "";
	   mode = [ "n" "v" ];
	   }
	   {
	   __unkeyed-1 = "<leader>a";
	   group = "copilot";
	   icon = "";
	   mode = [ "n" "v" ];
	   }
	   {
	   __unkeyed-1 = "<leader>t";
	   group = "tab";
	   icon = "";
	   mode = "n";
	   }
	   {
	   __unkeyed-1 = "<leader>q";
	   group = "quarto";
	   icon = "";
	   mode = "n";
	   }
	   {	
	   __unkeyed-1 = "<leader>f"; 
	   group = "telescope";
	   icon = "";
	   mode = "n";
	   }
   	   {
	   __unkeyed-1 = "<leader>g";
	   group = "git";
	   icon = "";
	   mode = "n";
	   }
      ];
    }; 
  };
}
