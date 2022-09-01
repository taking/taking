"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
" VIM에서 기억할 히스토리 라인수
set history=1000

" Set to auto read when a file is changed from the outside
" 현재 사용하고 있는 파일이 외부에서 수정된 경우 자동으로 읽기
set autoread

" Set to auto write on opening an other file.
" 다른 파일을 읽게 되는 경우 현재 파일을 자동으로 저장하기
" 현재 파일을 저장하지 않으면 ":e" 등으로 다른 파일을 열 수 없음.
set autowrite

" Use mouse or not
" 마우스로 클릭한 위치에 커서 놓기
" 마우스로 드래그한 영역은 비쥬얼 모드로 복사준비하기
" 단 마우스를 사용하면, 마우스 오른 버튼을 눌러 나오는 복사를 선택할 수 없음.
" 마우스를 사용하지 않으려면, ":set mouse-=a"를 치기
set mouse-=a

"커서가 있는 라인을 하이라이트 표시
set cul

" list 옵션 backspace 를 indent,eol,start 로 설정
set backspace=indent,eol,start


set linebreak
"  한 줄이 너무 길어 여러 줄로 표현될 때, 아래쪽 줄들이 윗쪽 줄에서 이어짐을 설정한 기호를 사용해 가장 왼쪽에 표시
let &showbreak = '+++ '
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show current position
" 오른편 하단에 현재 위치의 (행, 렬)을 표시
set ruler

" Highlight search results
" 검색결과에 하이라이트 표시하기
set hlsearch

" Makes search act like search in modern browsers
" 한글자 입력할때마다 매치되는 부분 표시하기
set incsearch

" Show matching brackets when text indicator is over them
" 현재 커서가 놓여진 괄호의 짝을 표시하기
set showmatch

" line number
" 라인넘버 표시하기
set number

" 일반모드에서 / 검색 시, 대소문자 구분하지 않기
set ignorecase

" 검색어에 대문자가 포함되어 있다면 대소문자를 무시하지 않기
set smartcase

" 완성중인 명령을 표시
set sc
" F1 탭 추가
nmap <F1> :tabnew<CR>
" F2 창 간 이동
nmap <F2> <C-w><C-w>
" Shift+Tab 탭 간 이동, [gt -> / gT <-]
nmap <S-Tab> gt<CR>
" F3은 저장하고 나가기
nmap <F3> :wq!<CR>
" F4는 현재창 닫기
nmap <F4> :q!<CR>

nmap <F11> <C-w><h><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlight
" 언어 syntax에 하이라이트표시
syntax on

" color scheme
" 컬러스킴
colorscheme sublimemonokai "solarized, mango, sublimemonokai
set background=dark
set t_Co=256

" Set utf8 as standard encoding
" utf8을 표준 인코딩으로 사용하기
set encoding=utf8
set fileencoding=utf-8
set tenc=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto indent's tab size
" 자동탭 사이즈를 4칸으로 하기
set shiftwidth=4

" 1 tab == 4 spaces
" 탭을 4칸으로 하기
set tabstop=4

" 탭 대신 스페이스 사용
" 이 부분은 .editorconfig 사용하기로
"set expandtab

" c style auto indent
" c언어 스타일로 indentation하기
set cindent

" 다음 라인을 편집할 때 프로그래밍 언어 신택스를 고려하여 자동으로 인덴트를 넣어주는 기능 
set smartindent

set wrap
set nowrapscan
set nobackup
set noswapfile
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold functions by indent or syntax.
" open a folded function using 'zo'
" clase a function using 'zc'
" syntax에 따라 접어두기
" 접은 것을 열려면, zo를 누르기
" 연 것을 다시 접으려면, zc를 누르기
" #set foldmethod=indent
" 최대 깊이는 1개로 고정
" set foldnestmax=1
" title 표시 
set title
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree' " Vim 에서 파일 탐색기 사용 
let NERDTreeWinPos = "left"
nmap <F7> : NERDTree<CR>
Plugin 'AutoComplPop' " VIM 자동완성기능(Ctrl+P)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='papercolor'
Plugin 'Tagbar'
nmap <F8> :TagbarToggle<CR>

Plugin 'togglenumber'
nmap <F5> :ToggleNumber<CR>

Plugin 'airblade/vim-gitgutter' " 코드 변경 내역을 한눈에
Plugin 'tpope/vim-fugitive' " Vim에서 Git 사용하기
Plugin 'scrooloose/syntastic' " 코드 문법 체크
Plugin 'ctrlpvim/ctrlp.vim' " 파일 찾기 기능 (사용법 : Control + P)
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_map = '<c-p>'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required