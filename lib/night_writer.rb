require "./lib/night_writer_class"

nw = NightWriter.new
nw.write_file(nw.read_file)
