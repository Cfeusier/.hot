set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'https://github.com/plasticboy/vim-markdown.git'
Bundle "pangloss/vim-javascript"
Bundle 'majutsushi/tagbar'
" full path fuzzy search
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'L9'
Plugin 'delimitMate.vim'
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'
Plugin 'rizzatti/dash.vim'
Bundle 'edkolev/tmuxline.vim'
Plugin 'leafgarland/typescript-vim'
" All of your Plugins must be added above
call vundle#end()            " required
" Non-Plugin stuff after this line

" Styling and Themes
set background=dark
colorscheme solarized
set number
syntax enable
filetype plugin indent on    " required
set ruler
set cursorline

" Indentation
set nowrap
set expandtab
set softtabstop=2
set shiftwidth=2

" Encoding and auto-r/w
set autoread
set autowrite
set encoding=utf8

" Reload changes to .vimrc automatically
autocmd BufWritePost  ~/.vimrc source ~/.vimrc
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" allow switching between buffers without saving
set hidden
set showcmd

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" make real tabs - ugh
au FileType make set noexpandtab

" auto formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e

" show :make typescript compile errors
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" typescript compiler opts
let g:typescript_compiler_options = '-sourcemap'

" Open markdown files with Chrome
" autocmd BufEnter *.md exe 'noremap <F5> :!open -a "Google Chrome.app" %:p<CR>'
" autocmd BufEnter *.markdown exe 'noremap <F5> :!open -a "Google Chrome.app" %:p<CR>'

" Thorfile, Rakefile, Vagrantfile, rackup file, guardfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,Guardfile} set ft=ruby

" set json syntax
au BufNewFile,BufRead *.json set ft=javascript

" set typescript syntax
" au BufNewFile,Bufread *.ts set ft=javascript

" Mustache configuration
au BufNewFile,BufRead *.mustache setf mustache

" Yaml Configuration
au BufRead,BufNewFile *.{yml,yaml} set foldmethod=indent

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" CTags
map <Leader>rt :!/usr/local/bin/ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" I want to do this commands
command! Q q
command! W w

" Key Bindings
nmap <silent> <C-t> :NERDTreeToggle<cr>
nmap <F8> :TagbarToggle<CR>

" Quick ESC
imap jj <ESC>
"
" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" NERDTree
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
let NERDTreeShowHidden=1

" Syntastic
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.0.0-p598/bin/ruby'

" Airline and Tmuxline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:ycm_auto_trigger = 1

