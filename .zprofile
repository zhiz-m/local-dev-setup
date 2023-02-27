# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

cd $HOME

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#d0d0d0,bg:#121212,hl:#5f87af
 --color=fg+:#d0d0d0,bg+:#262626,hl+:#5fd7ff
 --color=info:#afaf87,prompt:#d7005f,pointer:#af5fff
 --color=marker:#87ff00,spinner:#af5fff,header:#87afaf'

export LS_COLORS="di=1;32:ln=1;30;47:so=30;45:pi=30;45:ex=1;31:bd=30;46:cd=30;46:su=30;41:sg=30;41:tw=30;41:ow=30;41:*.rpm=1;31:*.deb=1;31"

export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

if [ -z "$TMUX" ]; then
  exec tmux new
fi