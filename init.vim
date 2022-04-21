lua require('plugins')

" Plugins configuration
set nocompatible

" LSP Configuration
lua require('lsp')


" Vim Settings

let g:mix_format_on_save = 1 " Automatically format on saving.


set mouse=a

set number
set numberwidth=1

set clipboard=unnamedplus

set cursorline
set tabstop=2 shiftwidth=2 expandtab
set nowrap

syntax on

set incsearch
set ignorecase
set smartcase

" NerdTree
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <leader><leader> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" fzf
nnoremap <C-p> :Files<CR>

" resize windows

nnoremap <C-h> :vertical resize +25<CR>
nnoremap <C-l> :vertical resize -25<CR>
" nnoremap <C-k> :resize +25<CR>
nnoremap <C-j> :resize -25<CR>

" Tabs
nnoremap <A-1> :tabp<CR>
nnoremap <A-2> :tabn<CR>



" Theme config
" ------------
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (empty($TMUX))
"   if (has("nvim"))
"     "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"     let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"   endif
"   "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"   "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"   " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"   if (has("termguicolors"))
"     set termguicolors
"   endif
" endif

" colorscheme gruvbox
" let g:gruvbox_contrast_dark

autocmd vimenter * ++nested colorscheme gruvbox
"

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
