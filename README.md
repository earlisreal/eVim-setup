# Earl Vim setup


Earl's vim setup for new PCs


## Requirements

* Latest version of [Python 3](https://www.python.org/downloads/)
* [eHelper](https://github.com/earlisreal/eHelper-Chrome-Extension) Chrome extension
* [Cygwin](https://www.cygwin.com/) as g++ compiler
* [Java 8+](https://www.oracle.com/java/technologies/javase-jdk13-downloads.html) of course

## Install Pathogen

Follow the installation steps here: https://github.com/tpope/vim-pathogen

## Vim Plugins

Run this scripts inside ~/vimfiles/bundle

    git clone https://github.com/scrooloose/nerdtree
    git clone https://github.com/altercation/vim-colors-solarized
    git clone https://github.com/honza/vim-snippets
    git clone https://github.com/sirver/ultisnips
    git clone https://github.com/tomtom/tcomment_vim
    git clone https://github.com/jiangmiao/auto-pairs
    git clone git@github.com:earlisreal/ehelper.git
    
    

## _vimrc

Copy the attached _vimrc file

## System Variables

    C:\Program Files\Java\jdk-13.0.2\bin;C:\cygwin64\bin;C:\Program Files\Vim\vim82;C:\Python38\;C:\Python38\Scripts\

## vim-snippets

Custom snippets for C++

### initialization

    snippet init "Initialize cpp"
    #include <bits/stdc++.h>
    
    #define pp push_back
    #define pf push_front
    #define mp make_pair
    #define fs first
    #define sc second
    #define sf scanf
    
    using namespace std;
    
    typedef long long ll;
    typedef unsigned long long ull;
    typedef pair<int, int> ii;
    
    const int N = (int) 1e5;
    const int INF = (int) 1e9 + 7;
    
    int main(int argc, char *argv[])
    {
    	// ios_base::sync_with_stdio(false);
    	// cin.tie(NULL);
    
    	$0
    
    	return 0;
    }
    endsnippet


### for Loop

    snippet for "for int loop (for)"
    for (int ${1:i} = ${2:0}; $1 < ${3:n}; ${4:++$1}) {
    	${VISUAL}$0
    }
    endsnippet
