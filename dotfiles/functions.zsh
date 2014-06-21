# ----------------------------------------------------------------------------
# Development
# ----------------------------------------------------------------------------

mkd() {
  local dir=$1
  mkdir -p $dir && cd $dir
}

npminstglob() {
  local modules=$@
  npm install -g $modules
}

# ----------------------------------------------------------------------------
# Git
# ----------------------------------------------------------------------------

# Git commit and add files
gac() {
  local message=$1
  git add . -A
  git commit -m "$message"
}
