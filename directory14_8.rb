#Chapter 14 exercise 8 : Program that prints it's own source code : Quine
#ruby directory14_8.rb | diff - directory14_8.rb :The diff command outputs nothing, which means that our program prints its own source code
def print_source_code(file)
  if File.exists?(file)
    File.foreach file do |file_line|
      puts file_line
    end
  else
    puts "File #{file} does not exist"
  end
end

print_source_code(__FILE__)
