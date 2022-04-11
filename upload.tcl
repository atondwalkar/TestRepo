proc git_add {file_ext} {
	set results [exec -ignorestderr git add -u $file_ext]
	puts "	$file_ext"
}

#exec git remote set-url origin https://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@github.com/atondwalkar/TestRepo.git
exec git config --global user.email atondwalstudio@gmail.com
exec git config --global user.name “Ashish”

puts "Adding files to push:"
set path pwd
git_add "*.c"
git_add "*.tcl"

puts "Commit message: "
exec git commit -m [gets stdin]
exec git push -u origin master

