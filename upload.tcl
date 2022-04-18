proc git_add {file_ext} {
	set results [exec -ignorestderr git add -u $file_ext]
	puts "	$file_ext"
}

puts "Adding files to push:"
set path pwd
git_add "*.c"
git_add "*.tcl"

puts "Commit message: "
exec git commit -m [gets stdin]
exec git push -u origin master

