function v
  if test -n "$SSH_CLIENT" -o -n "$SSH_TTY" -o -n "$SSH_CONNECTION"
    vim $argv
  else if test $os = Linux
    gvim $argv
  else if test $os = Darwin
    mvim $argv
  end
end
