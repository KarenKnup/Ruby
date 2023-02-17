#----> Criando arquivos (FILES)-----> Until now we have been performing input and output tasks using the gets and puts methods. A more permanent form of input and output is files.  Ruby allows us to easily create and work with files by using the built-in File class.

file = File.new("test.txt", "w+")

#The code above creates a file named "test.txt" with the mode w+ for read and write access to the file.

#After using a file, it must be closed using the close method:
file.close

#It is necessary to close open files so they no longer continue to occupy space in memory.

#----> FILE MODES:
=begin
Ruby supports the following file modes:
--> r read-only, starts at beginning of file (default mode).
--> r+ read-write, starts at beginning of file.
--> w write-only, truncates existing file to zero length or creates a new file for writing.
--> w+ read-write, truncates existing file to zero length overwriting existing data or creates a new file for reading and writing.
--> a write-only, appends to end of file if file exists, otherwise creates a new file for writing.
--> a+ read-write, appends or reads from end of file if file exists, otherwise creates a new file for reading and writing.
=end

#OBS: When the open mode is read only, the mode cannot be changed to writable. Similarly, the open mode cannot be changed from write only to readable.

# ----> Opening Files
#To open an existing file you use the File class open method:
file = File.open("filename", "w+") 

#As with the new method, the second argument of the open method specifies the mode.

#----> Writing Files
#The "puts" and "write" methods can be used for writing content to a file. The difference between the two is that "puts" adds a line break to the end of strings, while "write" does not.
file = File.new("test.txt", "w+")
file.puts("some text")
file.close

#If we want to write to an existing file, we can use a block of code to perform the write operation. With this code Ruby will automatically close the file.
File.open("file.txt", "w+") {
  |file| file.puts("some text") 
}

#This shorter way makes sure the file closes at the end of the block.

#----> Reading Files
#To read the entire contents of a file the "File.read" method can be used.
f = File.new("test.txt", "w+")
f.puts("a line of text")
f.puts("another line of text")
f.close

puts File.read("test.txt")

#We can also read the file contents line-by-line using the "readlines" method.
File.open("test.txt", "a+") {
    |file| file.puts("a line of text")
    file.puts("another line of text")
}

File.readlines("test.txt").each { |line|
    puts " --- #{line}"
}

#The "readlines" method reads the entire file based on individual lines and returns those lines in an array.

#----> Delete Files 
#We can delete a file using the "File.delete" method.
File.delete("test.txt")

#Be careful, as this command deletes the file permanently.
f = File.open("demo.txt", "r")
puts f.read
f.close
File.delete("demo.txt")

#----> Método "file?" -->  provides an easy way of checking if the file exists.
File.open("test.txt") if File.file?("text.txt")

#The code above tests whether a file exists before opening it. File.file? returns "true" if the file exists, and "false" if it does not.

if File.file?("demo.txt")
	f=File.open("demo.txt", "r")
	puts f.read
	f.close
else 
	puts "File does not exist"
end

#---> Método size --> returns the size of the file.
if File.file?("db.csv")
	puts File.size("db.csv")
end

#---> Método zero? --> returns true if the named file exists and has a zero size (is empty).
f = File.new("test.txt", "w+")
f.puts("some file content")

puts f.size

f.close

puts File.zero?("test.txt")

#----> We can also check whether the file is writable, readable or executable:
f = File.new("test.txt", "w+")
f.puts("some content")
f.close

puts File.readable?("test.txt")
puts File.writable?("test.txt")
puts File.executable?("test.txt")



