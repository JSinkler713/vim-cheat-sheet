"n normal mode"
nmap <Tab> :tabnext <CR>
nmap <S-Tab> :tabprevious <CR>
nmap <b> : !npm start <CR>
nmap <0> : ^ <CR>
" Open a markdown file in browser
nmap gm :LivedownToggle

" new reg exp, hopefully faster to allow highlighting ts, tsx
syntax on
set re=0
" use set filetype to override default filetype=xml for *.ts files
autocmd BufNewFile,BufRead *.ts  set syntax=typescript

"Go to file under cursor in a vertical new split"
"Kind of like gf, which is 'go' to 'file' under cursor, but opens a new split"
nmap <C-w>f <C-w>vgf


" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


"i map will configure insert mode"
imap <Tab> <Space><Space>
imap ii <Esc>

imap rfcyeah import React, {useState, useEffect, useContext} from 'react'; <Return> <Return>const NewComp = ()=> { <Return>return ( <Return> <div> <Return><BS><BS> <Return><BS><BS><BS><BS>  </div> <Return><BS><BS><BS><BS>  ) <Return> <BS><BS> <BS><BS>} <Return>export default NewComp;

"in insert mode type starcon and get a log of stars"
imap scon console.log('***********************')
imap scon2 console.log('*******************************************************************************************************************')

imap !!! <!DOCTYPE html><Return><html lang="en"><Return><head><Return><meta charset="UTF-8"><Return><meta name="viewport" content="width=device-width, initial-scale=1.0"><Return><title>Document</title><Return></head><Return><body><Return><Return></body><Return></html>


" helps give 10 lines between cursor and top or bottom if possible "
set so=10

" help with word wrap gj gk to move up psuedo-lines "
set linebreak
set wrap
set nolist

"set number"
set number relativenumber
set hlsearch


set autoindent
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

" saving code folds "
" to do a code fold, highlight and zf "
" then its as simple as zo to open, zc to close "
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" highlighted ? "
let g:coc_global_extensions = [ 'coc-tsserver' ]


" configuring the  netrw "
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

"augroup ProjectDrawer"
"  autocmd!"
"  autocmd VimEnter * :Vexplore"
"augroup END"

" old colorscheme "
" colorscheme desert "


" control j, or control k to move current line up or down "
" works in normal, insert, visual mode "
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv



filetype plugin indent on
set omnifunc=syntaxcomplete#Complete



" Plugins "
call plug#begin()
  Plug 'yuezk/vim-js'
  Plug 'prettier/vim-prettier', { 'do': 'npm install' }
 "JSX highlighting "
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'leafoftree/vim-vue-plugin'
  Plug 'briancollins/vim-jst'
  Plug 'nikvdp/ejs-syntax'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'jparise/vim-graphql'
  Plug 'morhetz/gruvbox'
  "Try out python autocomplete"
  Plug 'davidhalter/jedi-vim'
  " :Tab /character to format lines around char "
  Plug 'godlygeek/tabular'
  Plug 'shime/vim-livedown'
  " Autocomplete "
  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
  "Styled components'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
call plug#end()

colorscheme gruvbox
set background=dark


" yellow
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66
