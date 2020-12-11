so ~/.vim/plugs.vim

map <C-t> :NERDTreeToggle<CR>

let g:asyncrun_open = 8
let g:godot_executable = "~/Godot"

filetype plugin indent on
set number
set relativenumber
set autoindent
set encoding=UTF-8

let g:nord_cursor_line_number_background = 1
let g:nord_italic = 1
let g:nord_underline = 1

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

colorscheme nord
