" #############################################################################
" #                                                                           #
" # LIMIX_24OS .vimrc version 0.0.1                                           #
" #                                                                           #
" # 2013-10-20 2014-04-01                                                     #
" # 2014-04-01. add the plugins management pathogen                           #
" #                                                                           #
" #############################################################################
" =============================================================================
" global settings
let &termencoding=&encoding
syntax on
syntax enable
set nocompatible
set fileencodings=utf-8,ucs-bom,gbk,cp936
set fileencoding=utf-8
filetype plugin indent on
" =============================================================================
" vundle plugin manage
" plugin 3 kind
" vim-scripts user github repos,other user github repos,not on github
" set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle manage itself
Plugin 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
call vundle#end()
filetype on
" =============================================================================
" pathogen plugin rumtime path manage
" use the plugin pathogen to manage the vim plugins.
" call pathogen#infect() -- modified by limingxin 2012-12-05
execute pathogen#infect('bundle/{},~/media/src/vim/bundle/{}')
" =============================================================================
" common things----------------------------------------------------------------
set nowrap
set noswapfile
set textwidth=120
set shiftwidth=2
set tabstop=2
set autoindent
set cindent
set nu
set showmode
set guioptions-=m
set guioptions-=T
set ruler
set pastetoggle=<F10>
set clipboard=unnamed
" show the space and tab
set listchars=tab:>-,trail:-
:inoremap <F7> <C-R>=strftime("%F")<CR>
" =============================================================================
" plugin.vimwiki
let g:vimwiki_list=[{'path':'~/media/vimwiki/','template_path':'~/media/vimwiki/templates/','template_default':'default','template_ext':'.tpl','auto export':'1','path_html':'~/media/vimwiki/html'},{'path':'~/media/git/wiki','syntax':'markdown','ext':'.md'}]
let g:vimwiki_browsers=['ff']
" =============================================================================
" plugin.nerdtree
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
" =============================================================================
" limix test 测试使用
" -----------------------------------------------------------------------------
" :map <F9> :if exists("syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> end if <CR>
" =============================================================================
" TMUX manage
if exists('$TMUX')
	set term=screen-256color:w
endif
if exists('$ITERM_PROFILE')
  if exists('$TMUX') 
    let &amp;t_SI = "<Esc>[3 q"
    let &amp;t_EI = "<Esc>[0 q"
  else
    let &amp;t_SI = "<Esc>]50;CursorShape=1x7"
    let &amp;t_EI = "<Esc>]50;CursorShape=0x7"
  endif
end
" =============================================================================
