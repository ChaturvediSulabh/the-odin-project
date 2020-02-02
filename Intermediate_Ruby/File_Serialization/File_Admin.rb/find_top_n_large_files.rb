require 'filesize'

class Large_Files
  attr_writer :result

  def initialize
    @result = Hash.new
  end

  def find_n_large_files(n, dirname)
    return "#{dirname}: No such directory" if not Dir.exists?(dirname)
    files = Dir.glob("#{dirname}/**/*")
    files.each do |file|
      @result[file] = File.size(file)
    end
    @result = @result.sort_by{ |k,v| v }.reverse!
    i = 0
    @result.each { |k,v| puts "#{k.split('.')[-1]}\t#{k}\t#{Filesize.from("#{v} b").pretty}" if i < 10 ; i +=1 }
  end

end

runner = Large_Files.new
runner.find_n_large_files(10,'/Users/sulabhchaturvedi/personal')