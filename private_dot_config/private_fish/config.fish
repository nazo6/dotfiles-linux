set -U fish_greeting

if type -q mise
  mise activate fish | source
end

if status is-interactive
  if type -q zoxide
    zoxide init fish | source
  end
  if type -q starship
    starship init fish | source
  end

  abbr -a n nvim
  abbr -a lg lazygit
  abbr -a fish-reload 'source ~/.config/fish/**/*.fish'

  if type -q eza
    alias ls='eza'
    alias ll='eza -la'
  end
end
