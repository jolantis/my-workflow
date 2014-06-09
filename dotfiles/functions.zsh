# ----------------------------------------------------------------------------
# Development
# ----------------------------------------------------------------------------

# Create new directories and enter the first one
mkd() {
  if [ -n "$*" ]; then
    mkdir -p "$@" && cd "$@"
  fi
}

# Remove directories and echo message
rmd() {
  rm -r "$@"
}

# Install a grunt plugin and save to devDependencies
grunti() {
  npm install grunt-"$@" --save-dev
}

devscritps() {
  curl -O https://raw.githubusercontent.com/pedronauck/my-workflow/master/scripts/.editorconfig
  curl -O https://raw.githubusercontent.com/pedronauck/my-workflow/master/scripts/.jsbeautifyrc
  curl -O https://raw.githubusercontent.com/pedronauck/my-workflow/master/scripts/.jshintrc
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
