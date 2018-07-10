require "./lib/night_reader_class"

nr = NightReader.new
nr.write_it(nr.read_file)
