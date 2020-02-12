set number 
syntax on

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'

call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

ab sout System.out.println

abbr psvm public static void main(String[] args){<CR>}<esc>O
abbr sout System.out.println("");<esc>2hi
abbr sop System.out.println("");<esc>1hi
abbr syserr System.err.println("");<esc>1hi
abbr sep System.err.println("");<esc>1hi
abbr cl package ;<CR><CR>import java.util.*;<CR>import java.io.*;<CR><CR>public class {}<esc>2hi
abbr testcl package ;<CR><CR>import static org.junit.Assert.*;<CR>import org.junit.Test;<CR><CR>public class {}<esc>2hi
abbr @t @Test
abbr ps public static 

abbr ( ()<esc>hi
abbr { {<CR>}<esc>1hi
abbr [ []<esc>1hi
abbr forl for (int i = 0; i < ; i++) {<esc>7hi
abbr tryb try {<CR>} catch (Exception ex) {<CR> ex.printStackTrace();<CR>}<esc>hx3ko
abbr const public static final int

abbr ctm System.currentTimeMillis()
abbr slept try {<CR> Thread.sleep();<CR>}<esc>hxA catch(Exception ex) {<CR> ex.printStackTrace();<CR>}<esc>hx3k$hi

"Take care of indents for Java.
set autoindent
set si
set shiftwidth=4
"Java anonymous classes. Sometimes, you have to use them.
set cinoptions+=j1

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map <silent> <C-n> :NERDTreeFocus<CR>



