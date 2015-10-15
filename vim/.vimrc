filetype off                " for Vundle

let g:mapleader = ","
let mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/The-NERD-tree'
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2
let NERDTreeWinSize=24
map <leader>d :NERDTreeToggle<CR>
Plugin 'vim-scripts/taglist.vim'
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 25
let Tlist_Auto_Update = 1
"nnoremap <silent> <F8> :TlistToggle<CR>
Plugin 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'unicode'
Plugin 'vim-scripts/winmanager'
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout='NERDTree|TagList'

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

Plugin 'vim-scripts/DoxygenToolkit.vim'
let g:DoxygenToolkit_authorName="cloud@txthinking.com"
let g:DoxygenToolkit_licenseTag="The MIT License"
let g:DoxygenToolkit_versionString="0.0.1"
let g:DoxygenToolkit_briefTag_className="yes"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_briefTag_structName="yes"
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/DrawIt'
Plugin 'vim-scripts/matrix.vim--Yang'
Plugin 'vim-scripts/grep.vim'
Plugin 'vim-scripts/TeTrIs.vim'
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/The-NERD-Commenter'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-scripts/indentLine.vim'
Plugin 'fatih/vim-go'
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
call vundle#end()

set history=700             " Sets how many lines of history VIM has to remember
set autoread                " Set to auto read when a file is changed from the outside
set showtabline=0           " 隐藏Tab栏
set so=7                    " Set 7 lines to the cursor - when moving vertically using j/k
set wildmenu                " Turn on the WiLd menu
set wildignore=*.o,*~,*.pyc " Ignore compiled files
set ruler                   "Always show current position
set cmdheight=1             " Height of the command bar
set hid                     " A buffer becomes hidden when it is abandoned
set backspace=eol,start,indent  " Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l
set smartcase               " When searching try to be smart about cases
set hlsearch                " Highlight search results
set incsearch               " Makes search act like search in modern browsers
set lazyredraw              " Don't redraw while executing macros (good performance config)
set magic                   " For regular expressions turn magic on
set showmatch               " Show matching brackets when text indicator is over them
set mat=2                   " How many tenths of a second to blink when matching brackets
set noerrorbells            " No annoying sound on errors
set novisualbell            " No annoying sound on errors
set t_vb=                   " No annoying sound on errors
set tm=500
set noscrollbind            " sync scroll
set background=dark
set encoding=utf8           " Set utf8 as standard encoding and en_US as the standard language
set ffs=unix,dos,mac        " Use Unix as the standard file type
set fileformat=unix         " unix
set nobackup                " no backup
set nowb                    " no backup
set noswapfile              " no backup
set expandtab               " Use spaces instead of tabs
set smarttab                " Be smart when using tabs ;)
set shiftwidth=4            " 1 tab == 4 spaces
set tabstop=4
set softtabstop=4
set lbr                     " Linebreak on 500 characters
set tw=500
set ai                      " Auto indent
set si                      " Smart indent
set wrap                    " Wrap lines
set autoindent              " 自动缩进
set smartindent             " 智能缩进
set nu                      " 显示行号
set nocompatible            " no vi
set confirm                 " 关闭未保存文件确认
set formatoptions=tcrqn
set cindent
set completeopt=longest,menu    " C-X,C-O & C-P C-N 自动补全去掉preview窗口
set tags=~/.tags            " 设置使用的tags文件
set laststatus=2            " Always show the status line
set viminfo^=%              " Remember info about open buffers on close

colorscheme desert
syntax enable

nmap <leader>w :w!<cr>

map <F5> :!php -l %<CR>
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
map j gj
map k gk
map <space> /
map <c-space> ?
map <silent> <leader><cr> :noh<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>cd :cd %:p:h<cr>:pwd<cr>
map 0 ^
vnoremap <silent> gv :call VisualSelection('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
map <leader>q :e ~/buffer<cr>
map <leader>pp :setlocal paste!<cr>
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
" autocmd BufReadPost *
"     \ if line("'\"") > 0 && line("'\"") <= line("$") |
"     \   exe "normal! g`\"" |
"     \ endif

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  %s/\t/    /ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.php :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.go :call DeleteTrailingWS()

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

filetype plugin indent on       " for vundle
