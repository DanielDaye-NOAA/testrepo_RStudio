# Link GitHub with RStudio
install.packages("gitcreds")
install.packages("usethis")
library(gitcreds)
library(usethis)

# Check for recent R version
R.version.string

# Configure GitHub username (probably don't need to do this if you've already set up Git)
use_git_config(user.name = "USER", user.email = "EMAIL")

# Create a GitHub token for RStudio
usethis::create_github_token()

# Name the token whateve you want (I used something like RStudio-NOAA) with 
# default selected options from create_github_token()

# Set token using gitcreds_set(); paste into console when prompted
gitcreds::gitcreds_set()

# For more detail on creating a repo / linking to an R Project:
# https://happygitwithr.com/new-github-first

# Go to Github, make a new repository
# Don't use a template but add README file; create repo
# From repo, select <> CODE, copy URL to clone repo
# File > New Project > Version Control > Git > Paste URL
# Change directory name if you want, but will set to repo name automatically
