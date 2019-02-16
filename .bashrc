 # \h the hostname up to the first - "My-MacbookPro"
 # \n newline
 # \s the name of the shell
 # \t the current time in 24-hour format
 # \u the username of the current user (name of home directory)- "pat" 
 # \w the current working directory - "~""
 # \W the basename of the current working directory - "~"

 # command substitution is: $(), $() takes a command and replaces all of $(pwd) with the result of the command
 # 202 is the color for orange in the 256 color chart
 # $(tput setaf 202) sets the color orange for: \h:\u \w $
 # \h:\u \W - hostname:currentUser currentWorkingDirectory $ 
 # $(tput sgr0) ends where the color orange is.
 # \[ \] are escape characters to the terminal knows where the cursor is.

 # PS1="\[$(tput setaf 202)\]\h:\u \W $ \[$(tput sgr0)\]"; # My-MacbookPro:pat $
 # export PS1;

 # Makes terminal prompt show: (currentWorkingDirectory dollarsign) ~ $ in orange 

 PS1="\[$(tput setaf 202)\]\W $ \[$(tput sgr0)\]"; # ~ $ (currentWorkingDirectory $)
 export PS1;