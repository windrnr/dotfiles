function gs --wraps='git status' --wraps='git add' --description 'alias gs=git add'
  git add $argv; 
end
