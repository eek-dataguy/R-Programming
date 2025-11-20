#!/bin/bash

sudo apt update
sudo apt install r-base

FILE="settings.json"

cat <<EOL > $FILE
{
  "r.rterm.linux": "/usr/bin/R",
  "r.rpath.linux": "/usr/bin/R",
  "r.bracketedPaste": true,
  "r.sessionWatcher": true,
  "r.plot.useHttpgd": true
}
EOL

echo "settings.json has been created successfully."


FILETESTR="app.R"

cat <<'EOD' > "$FILETESTR"
message("Hello from R in VS Code on Linux!")
x <- 1:5
print(mean(x))
EOD


echo "Installing languageserver package in R..."
sudo Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org")'
sudo Rscript -e 'install.packages("httpgd")'
sudo Rscript -e 'install.packages("swirl")'