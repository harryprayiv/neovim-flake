{
  description = "Manverus' NeoVim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    neovim = {
      url = "github:neovim/neovim/v0.6.1?dir=contrib";
      inputs.flake-utils.follows = "flake-utils";
    };

    rnix-lsp.url = "github:nix-community/rnix-lsp";

    # Vim plugins
    vim-nickel = {
      url = "github:nickel-lang/vim-nickel";
      flake = false;
    };
    gruvbox = {
      url = "github:morhetz/gruvbox";
      flake = false;
    };
    nord-vim = {
      url = "github:arcticicestudio/nord-vim";
      flake = false;
    };
    vim-startify = {
      url = "github:mhinz/vim-startify";
      flake = false;
    };
    lightline-vim = {
      url = "github:itchyny/lightline.vim";
      flake = false;
    };
    nvim-lspconfig = {
      url = "github:neovim/nvim-lspconfig";
      flake = false;
    };
    vim-nix = {
      url = "github:LnL7/vim-nix";
      flake = false;
    };
    nvim-dap = {
      url = "github:mfussenegger/nvim-dap";
      flake = false;
    };
    nvim-telescope = {
      url = "github:nvim-telescope/telescope.nvim";
      flake = false;
    };
    telescope-dap = {
      url = "github:nvim-telescope/telescope-dap.nvim";
      flake = false;
    };
    popup-nvim = {
      url = "github:nvim-lua/popup.nvim";
      flake = false;
    };
    plenary-nvim = {
      url = "github:nvim-lua/plenary.nvim";
      flake = false;
    };
    nvim-web-devicons = {
      url = "github:kyazdani42/nvim-web-devicons";
      flake = false;
    };
    nvim-tree-lua = {
      url = "github:kyazdani42/nvim-tree.lua";
      flake = false;
    };
    vimagit = {
      url = "github:jreybert/vimagit";
      flake = false;
    };
    nvim-lightbulb = {
      url = "github:kosayoda/nvim-lightbulb";
      flake = false;
    };
    nvim-treesitter = {
      url = "github:nvim-treesitter/nvim-treesitter";
      flake = false;
    };
    nvim-treesitter-context = {
      url = "github:romgrk/nvim-treesitter-context";
      flake = false;
    };
    barbar-nvim = {
      url = "github:romgrk/barbar.nvim";
      flake = false;
    };
    editorconfig-vim = {
      url = "github:editorconfig/editorconfig-vim";
      flake = false;
    };
    indent-blankline-nvim = {
      url = "github:lukas-reineke/indent-blankline.nvim";
      flake = false;
    };
    nvim-blame-line = {
      url = "github:tveskag/nvim-blame-line";
      flake = false;
    };
    nvim-dap-virtual-text = {
      url = "github:theHamsta/nvim-dap-virtual-text";
      flake = false;
    };
    vim-cursorword = {
      url = "github:itchyny/vim-cursorword";
      flake = false;
    };
    vim-dadbod = {
      url = "github:tpope/vim-dadbod";
      flake = false;
    };
    vim-dadbod-ui = {
      url = "github:kristijanhusak/vim-dadbod-ui";
      flake = false;
    };
    vim-hexokinase = {
      url = "github:RRethy/vim-hexokinase";
      flake = false;
    };
    which-key-nvim = {
      url = "github:folke/which-key.nvim";
      flake = false;
    };
    vim-test = {
      url = "github:vim-test/vim-test";
      flake = false;
    };
    vim-floaterm = {
      url = "github:voldikss/vim-floaterm";
      flake = false;
    };
    vim-crystal = {
      url = "github:vim-crystal/vim-crystal";
      flake = false;
    };
    nvim-jqx = {
      url = "github:gennaro-tedesco/nvim-jqx";
      flake = false;
    };
    formatter-nvim = {
      url = "github:mhartington/formatter.nvim";
      flake = false;
    };
    vim-cue = {
      url = "github:jjo/vim-cue";
      flake = false;
    };
    vim-mint = {
      url = "github:IrenejMarc/vim-mint";
      flake = false;
    };
    vim-surround = {
      url = "github:tpope/vim-surround";
      flake = false;
    };
    wilder-nvim = {
      url = "github:gelguy/wilder.nvim";
      flake = false;
    };
    vim-abolish = {
      url = "github:tpope/vim-abolish";
      flake = false;
    };
    vim-go = {
      url = "github:fatih/vim-go";
      flake = false;
    };
    nvim-idris2 = {
      url = "github:ShinKage/nvim-idris2";
      flake = false;
    };
    cmp-nvim-lsp = {
      url = "github:hrsh7th/cmp-nvim-lsp";
      flake = false;
    };
    cmp-buffer = {
      url = "github:hrsh7th/cmp-buffer";
      flake = false;
    };
    cmp-path = {
      url = "github:hrsh7th/cmp-path";
      flake = false;
    };
    cmp-cmdline = {
      url = "github:hrsh7th/cmp-cmdline";
      flake = false;
    };
    nvim-cmp = {
      url = "github:hrsh7th/nvim-cmp";
      flake = false;
    };
    LuaSnip = {
      url = "github:L3MON4D3/LuaSnip";
      flake = false;
    };
    cmp_luasnip = {
      url = "github:saadparwaiz1/cmp_luasnip";
      flake = false;
    };
    lsp_signature = {
      url = "github:ray-x/lsp_signature.nvim";
      flake = false;
    };
    splice = {
      url = "github:sjl/splice.vim";
      flake = false;
    };
  };

  outputs = {
    nixpkgs,
    flake-utils,
    neovim,
    ...
  } @ inputs:
    flake-utils.lib.eachDefaultSystem (system: let
      plugins = [
        "barbar-nvim"
        "cmp-buffer"
        "cmp-cmdline"
        "cmp_luasnip"
        "cmp-nvim-lsp"
        "cmp-path"
        "editorconfig-vim"
        "formatter-nvim"
        "gruvbox"
        "indent-blankline-nvim"
        "lightline-vim"
        "lsp_signature"
        "LuaSnip"
        "nord-vim"
        "nvim-blame-line"
        "nvim-cmp"
        "nvim-dap"
        "nvim-dap-virtual-text"
        "nvim-idris2"
        "nvim-jqx"
        "nvim-lightbulb"
        "nvim-lspconfig"
        "nvim-telescope"
        "nvim-tree-lua"
        "nvim-treesitter"
        "nvim-treesitter-context"
        "nvim-web-devicons"
        "plenary-nvim"
        "popup-nvim"
        "splice"
        "telescope-dap"
        "vim-abolish"
        "vimagit"
        "vim-crystal"
        "vim-cue"
        "vim-cursorword"
        "vim-dadbod"
        "vim-dadbod-ui"
        "vim-floaterm"
        "vim-go"
        "vim-hexokinase"
        "vim-mint"
        "vim-nickel"
        "vim-nix"
        "vim-startify"
        "vim-surround"
        "vim-test"
        "which-key-nvim"
        "wilder-nvim"
      ];

      pluginOverlay = lib.buildPluginOverlay;

      pkgs = import nixpkgs {
        inherit system;
        config = {allowUnfree = true;};
        overlays = [
          pluginOverlay
          (final: prev: {
            statix = inputs.statix.defaultPackage."${system}";
            neovim-nightly = neovim.defaultPackage."${system}";
            rnix-lsp = inputs.rnix-lsp.defaultPackage."${system}";

            efm-langserver = prev.buildGoModule rec {
              pname = "efm-langserver";
              version = "0.0.36";
              vendorSha256 = "sha256-tca+1SRrFyvU8ttHmfMFiGXd1A8rQSEWm1Mc2qp0EfI=";
              src = prev.fetchFromGitHub {
                owner = "mattn";
                repo = pname;
                rev = "v${version}";
                sha256 = "sha256-X2z49KmJiKh1QtcDBZcqNiMhq5deVamS47w6gyVq7Oo=";
              };
            };

            regols = prev.buildGoModule rec {
              pname = "regols";
              version = "0.1.0";
              vendorSha256 = "sha256-JtZBhTXjFRcm+7oJii0eoJRyVJV+O0ad2xL3TDe+5Yo=";
              src = prev.fetchFromGitHub {
                owner = "kitagry";
                repo = pname;
                rev = "v${version}";
                sha256 = "sha256-2MTetTWHJAiSWPcEFJ/p0xptAWDKNXwTq68RywUO+Ls=";
              };
            };
          })
        ];
      };

      lib = import ./lib {inherit pkgs inputs plugins;};

      inherit (lib) neovimBuilder;
    in rec {
      inherit neovimBuilder pkgs;

      apps = {
        nvim = {
          type = "app";
          program = "${defaultPackage}/bin/nvim";
        };
      };

      defaultApp = apps.nvim;

      defaultPackage = packages.neovim;

      overlay = self: super: {
        inherit neovimBuilder;
        inherit (packages) neovim;
        inherit (pkgs) neovimPlugins;
      };

      packages.neovim = neovimBuilder {
        config.vim = {
          dashboard.startify.customHeader = ["Welcome to NeoVim"];
          dashboard.startify.enable = true;
          database.enable = true;
          disableArrows = false;

          cnoremap = {"3636" = "<c-u>undo<CR>";};

          editor = {
            surround = true;
            colourPreview = true;
            whichKey = true;
            floaterm = true;
            wilder = true;
            abolish = true;
          };

          filetree.nvimTreeLua = {enable = true;};
          formatting.editorConfig.enable = true;
          fuzzyfind.telescope.enable = true;
          statusline.lightline.enable = true;
          tabbar.barbar.enable = true;
          test.enable = true;
          theme.gruvbox.enable = true;
          viAlias = true;
          vimAlias = true;

          git = {
            enable = true;
            blameLine = false;
          };

          lsp = {
            bash = true;
            clang = true;
            cmake = true;
            crystal = true;
            css = true;
            docker = true;
            enable = true;
            go = true;
            html = true;
            idris2 = true;
            json = true;
            lightbulb = true;
            rego = true;
            mint = true;
            nickel = true;
            nix = true;
            python = true;
            ruby = true;
            rust = true;
            shellcheck = true;
            terraform = true;
            tex = true;
            typescript = true;
            variableDebugPreviews = true;
            vimscript = true;
            yaml = true;
          };
        };
      };
    });
}
