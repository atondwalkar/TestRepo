proc git_add {file_ext file_type folder} {
  try {
    set results [exec -ignorestderr git add $file_ext]
    puts $file_ext
  } trap CHILDSTATUS {results options} {
    puts "Warning: No $file_type files update has been found in $folder"
  }
}

exec git remote set-url origin https://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@github.com/atondwalkar/TestRepo.git
exec git config --global user.email atondwalstudio@gmail.com
exec git config --global user.name “Ashish”

puts "Adding files to push:"
set path pwd
git_add "test.c" "C" "$path"
git_add "upload.tcl" "tcl" "$path"

puts "Commit message: "
exec git commit -m [gets stdin]
exec git push -u origin master

