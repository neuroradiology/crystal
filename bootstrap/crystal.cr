require "crystal/**"

include Crystal

if ARGV.length == 0
  puts "Usage: test2 [file]"
  exit 1
end

filename = ARGV[0]
unless File.exists?(filename)
  puts "File #{filename} does not exist"
  exit 1
end

bitcode_filename = "foo.bc"
output_filename = "foo"

str = File.read filename

begin
  parser = Parser.new(str)
  parser.filename = filename
  nodes = parser.parse
  mod = infer_type nodes
  llvm_mod = build nodes, mod
  llvm_mod.write_bitcode bitcode_filename

  system "llc #{bitcode_filename} -o - | clang -x assembler -o #{output_filename} -"
rescue ex : Crystal::Exception
  puts ex
end
