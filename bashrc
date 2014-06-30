# Colours
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red - Bold
bldgrn='\[\e[1;32m\]' # Green - Bold
bldylw='\[\e[1;33m\]' # Yellow - Bold
bldblu='\[\e[1;34m\]' # Blue - Bold
bldpur='\[\e[1;35m\]' # Purple - Bold
bldcyn='\[\e[1;36m\]' # Cyan - Bold
bldwht='\[\e[1;37m\]' # White - Bold
txtrst='\[\e[0m\]'    # Text Reset

# GPG Key
GPGKEY=AAED4905

# Function called before prompt
function pre_prompt_print(){
  # Git branch
  GIT_BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[git:\1]/'`
}

PROMPT_COMMAND=pre_prompt_print
PS1="$bldgrn\u$txtrst@$bldpur\h$txtrst:$bldblu\w$txtrst $bldpur\${GIT_BRANCH}$txtrst\n$bldylw\!$txtrst> "
#PS1="\u@\h:\w \${GIT_BRANCH}\n\!> "

# Git Config
export GIT_AUTHOR_EMAIL=craig@craig-russell.co.uk
export GIT_AUTHOR_NAME='Craig Russell'
export GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL
export GIT_COMMITTER_NAME=$GIT_AUTHOR_NAME

# Git aliases
alias gita='git add'
alias gitc='git commit -m'
alias gitco='git checkout'
alias gits='git status -s'
alias gitl='git log --oneline --color'
alias gitb='git branch --color'
alias gitu='git reset HEAD^'

# Other Aliases
alias df='df --human-readable'
alias ll='ls --human-readable --group-directories-first -l'
alias pud='pushd'
alias pod='popd'
alias g='grep'
alias st2='sublime-text'
alias jsonpp='python -mjson.tool'
alias ppjson='python -mjson.tool'
alias http='python -m SimpleHTTPServer'
alias encrypt='gpg --encrypt --armour --sign --emit-version'
alias decrypt='gpg --decrypt'

# Awk filters CSV files by default
alias awk='awk -F "^\"|\"*,\"*|\"$"'

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add bin to path
PATH=$PATH:$HOME/bin

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# Add Heroku Toolbelt to path
PATH="/usr/local/heroku/bin:$PATH"

# Add google app engine to path
PATH=$PATH:$HOME/.google_appengine

# Add google app engine libraries to python path
export PYTHONPATH=$PYTHONPATH:~/.google-appengine/lib/

# Command line interactive calculator
# I like this better than bc -iq
function calc(){
  while true
  do
    echo -n "> "
    read LINE
    echo "$LINE" | bc
  done
}

# Filter links from HTML
function filter_links(){
  grep "href=" | sed "s/.*href=[\"\']\([^'\"]*\)[\"'].*/\1/"
}

# Return status code
function curl_code(){
  curl -s -w "%{http_code} %{url_effective}\\n" "$1" -o /dev/null
}

# Return url with uol_r tracking code
function uol_r(){
 X=`echo $1 | sha1sum | cut -c1-8`
 echo "Redirect permanent $1    $2?uol_r=$X"
}