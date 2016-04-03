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
syntax on
filetype plugin on
" 文件字符处理-----------------------------------------------------------------------
let &termencoding=&encoding
set fileencodings=utf-8,ucs-bom,gbk,cp936
set fileencoding=utf-8
" 基本信息处理-----------------------------------------------------------------------
set nowrap
set noswapfile
set textwidth=120
set shiftwidth=2
set tabstop=2
set autoindent
set cindent
set nu
set nocompatible
set showmode
set guioptions-=m
set guioptions-=T
set ruler
set pastetoggle=<F10>
set clipboard=unnamed
" show the space and tab.
set listchars=tab:>-,trail:-
:inoremap <F7> <C-R>=strftime("%F")<CR>
" =============================================================================
" LIMIX_PLUGIN pathogen you can also use the vundle for help
" -----------------------------------------------------------------------------
" use the plugin pathogen to manage the vim plugins.
" call pathogen#infect() -- modified by limingxin 2012-12-05
execute pathogen#infect('bundle/{},~/media/src/vim/bundle/{}')
syntax on
filetype plugin indent on
" =============================================================================
" LIMIX_PLUGIN vimwiki
" -----------------------------------------------------------------------------
" -- set the vimwiki main path,and the html file path.
let g:vimwiki_list=[{'path':'~/media/vimwiki/','template_path':'~/media/vimwiki/templates/','template_default':'default','template_ext':'.tpl','auto export':'1','path_html':'~/media/vimwiki/html'},{'path':'~/media/git/wiki','syntax':'markdown','ext':'.md'}]
let g:vimwiki_browsers=['ff']
" =============================================================================
" LIMIX_PLUGIN eclim 插件相关设置部分.
" -----------------------------------------------------------------------------
" -- maps Ctrl-F to eclipse's Ctrl-Shift-R key binding (find resource)
nmap <silent> <c-f> :call eclim#vimplugin#FeedKeys('Ctrl+Shift+R')<cr>
" maps Ctrl-M to eclipse's Ctrl-M binding to maximize the editor,
" Supplying 1 as the arg will result in the refocusing of gvim after the eclipse key
" binding has been executed.
nmap <silent> <c-m> :call eclim#vimplugin#FeedKeys('Ctrl+M', 1)<cr>
let g:EclimTodoSearchPattern = '\(\<fixme\>\|\<todo\>\)\c'
" =============================================================================
" LIMIX_PLUGIN vjde 插件相关设置部分.
" -----------------------------------------------------------------------------
" defined by limix for vjde 2012-09-02 begin
" let g:vjde lib path="lib/struts.jar:
" defined by limix for vjde 2012-09-02 end
" =============================================================================
" limix test 测试使用
" -----------------------------------------------------------------------------
" :map <F9> :if exists("syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> end if <CR>
" =============================================================================
" plugin.netrw
" set nocompatiable
" filetype plugin on
" =============================================================================
" NERDTree
map <F2> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
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
