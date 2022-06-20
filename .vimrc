filetype off
set nocompatible  			 " Dont act like vi
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
" Plugin 'arthur-shaik/vim-javacomplete2'
call vundle#end()

syntax on         			 " Enable syntax highlighting
filetype plugin indent on 		 " Enable default plugins
set showmatch   	  		 " Show matching brackets.
set ignorecase   		 " Do case insensitive matching
set smartcase   		 " Do smart case matching
set incsearch   		 " Incremental search
set autowrite   		 " Automatically save before commands like :next and :make
set hidden   		 " Hide buffers when they are abandoned
set number         		 " Enable numbers on side
set relativenumber			 " See how far away lines are
set background=dark		 " Set for dark themes
set laststatus=2   		 " Status line displayed
set mouse=a   		 " Enable mouse usage (all modes)

set path +=**       	" Search down into sub folders
set wildmenu        	" Dislay matching file names in tab
set completeopt+=menuone
set completeopt+=noselect

let g:JavaImpPaths = "/usr/lib/jvm/java-11-openjdk-amd64/bin/java"
let g:JavaImpDataDir = $HOME . "/.vim/JavaImp"

" Remap up and down
nnoremap j k
nnoremap k j
 
 " Code block autocompletion
nnoremap ,html :-1read /usr/share/vim/.skeleton.html<CR>3jwf>a
nnoremap ,java :-1read /usr/share/vim/.skeleton.java<CR>3jwf>a
nnoremap ,cmain :-1read /usr/share/vim/.skeleton.c<CR>3jwf>a

autocmd FileType java setlocal omnifunc=javacomplete#Complete " Automatically launch for .java files
setlocal completefunc=javacomplete#CompleteParamsInfo
 " nmap <F5> <Plug>(JavaComplete-Imports-Add)
 " imap <F5> <Plug>(JavaComplete-Imports-Add)

colorscheme gruvbox
