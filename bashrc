# LnOS Arch Edition barebones default bashrc for beginner users

# Display system info at login
if [ -t 1 ]; then
  fastfetch
  echo ""
  echo "Tip: Use 'tldr <command>' for quick command examples."
  echo "     Use 'info <command>' for detailed documentation."
fi

# Enable color support in less pager
export LESS='-R'

# Clean, green-colored prompt showing user@host:directory$
PS1='\[\e[32m\]\u@\h:\w\$ \[\e[0m\]'
