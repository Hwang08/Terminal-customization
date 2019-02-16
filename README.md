# Terminal-customization
Customize terminal prompt in Mac.

1) Show hidden ~/Library/ folder
	a) Open Finder
	b) Go to Home Directory
	c) Press Cmd + Shift + .(dot) to show hidden files and press again to hide 	  hidden files
	d) See if You have the files .bash_profile and .bashrc
	e) If you dont have those files create them in a text editor and save the
	   files your home directory.
	f) If you do have them open the files in a text editor.

2) In .bash_profile copy, paste and save the code below:
	```
	# Added to customize .bash_profile and .bashsrc
	# If we open up a login shell it runs the code from .bash_profile
	# It's then going to run the code below which then runs the code from the .bashrc file
	# If the bashrc file exists then execute that code in the .bashrc file
	# Can add all customizations to the .bashrc file

	if [ -f ~/.bashrc ]; then
	source ~/.bashrc
	fi
	```

3) If you have conda installed change the letter f in (false) to a capital F (False) in the code below. That will remove the (base) that shows up in the beggining of the prompt
	
	```
	CONDA_CHANGEPS1=False conda activate base
	```

4) In .bashrc is where you can write the code to custimize your terminal prompt.

	a) Copy, paste and save the code below if you want to have your prompt show: hostname:currentUser currentWorkingDirectory $

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

		PS1="\[$(tput setaf 202)\]\h:\u \W $ \[$(tput sgr0)\]"; # My-MacbookPro:pat $
		export PS1;
	
	b) Copy, paste and save the code below if you want to have your prompt show: currentWorkingDirectory $

		# Makes terminal prompt show: (currentWorkingDirectory dollarsign) ~ $ in orange 

		PS1="\[$(tput setaf 202)\]\W $ \[$(tput sgr0)\]"; # ~ $ (currentWorkingDirectory $)
		export PS1;


