# --- ПЕРЕМЕННЫЕ (до загрузки плагинов) ---
export EDITOR=$( [[ -n $SSH_CONNECTION ]] && echo 'vim' || echo 'nvim' )
export LS_COLORS="di=38;2;166;227;161:ln=38;2;137;180;250:ex=38;2;148;226;213"

# [ -z "$TMUX" ] && [ -f ~/.cache/wal/sequences ] && cat ~/.cache/wal/sequences

# --- ИНИЦИАЛИЗАЦИЯ ZINIT ---
source "$HOME/.zinit"
# source <(fzf --zsh)

# Оптимизированный compinit (проверка кэша)
autoload -Uz compinit
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.m-1) ]]; then
  compinit -C
else
  compinit
fi
zinit cdreplay -q

# --- УТИЛИТЫ ---
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/mocha.json)"
eval "$(zoxide init zsh)"

# --- ALIASES ---
alias n="nvim"
alias sn="sudoedit"
alias zrc="nvim ~/.zshrc"
alias zr="source ~/.zshrc"
alias i="paru -S"
alias u="paru -Rns"
alias s="paru -Ss"
alias reflect="doas reflector --verbose --latest 100 --age 24 --sort rate --save /etc/pacman.d/mirrorlist"
alias ls="eza --tree --level=1 --icons=always --no-time --no-permissions --no-user -s type"
alias cat="bat --paging=never"
alias cd="z"
alias ytmp3="yt-dlp -x --audio-format mp3 --remux-video mp3"
alias ytmp4="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 --cookies-from-browser=firefox"
alias yd="yt-dlp"
alias fetch="clear;fastfetch --color red"
alias py="python"
alias toPng="~/.bin/toPng"
alias venc='sh -c "$(curl -sS https://vencord.dev/install.sh)"'
alias st="stow ."
alias t='tmux attach -t 0 || tmux new -s 0'
alias uni="unimatrix -s 95 -c red -a"

# --- HISTORY ---
HISTSIZE=50000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory sharehistory hist_ignore_space hist_ignore_all_dups hist_save_no_dups

# --- STYLING ---
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Тема для FSH (тихо)
fast-theme XDG:catppuccin-mocha > /dev/null 2>&1

# --- АВТОЗАПУСК ---
if [[ "$(tty)" == "/dev/tty1" ]]; then  
  exec start-hyprland
fi
# fetch
