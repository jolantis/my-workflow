# ------------------------------------------------------------------------------
#	Development
# ------------------------------------------------------------------------------

# Remove directories and echo message
rmd() {
  rm -r "$@"
}

# Install a grunt plugin and save to devDependencies
grunti() {
  npm install grunt-"$@" --save-dev
}

# ------------------------------------------------------------------------------
#	Git
# ------------------------------------------------------------------------------

# Git commit and add files
gac() {
  local message=$1
  git aa
  git commit -m "$message"
}

# Clone a git repository
clone() {
  git clone $1
  # cd $1
}