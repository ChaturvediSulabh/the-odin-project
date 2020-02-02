# Exercise: Copy Wikipedia's front page to a file using block notation
require 'open-uri'

class URL_Fetcher
  attr_accessor :user_local_filename

  def initialize
    @user_local_filename = 'user_data.txt'
  end

  def get_every_42nd_line
    url_content_loader
    return "#{file}: No such file or directory" if not File.exists?(file)
    file_exists_validate(@user_local_filename)
    lines = file_handler(@user_local_filename)
    lines.each_with_index {|line, idx| puts "Line: #{line} ,Index: #{idx}" if idx % 42 == 0}
  end

  def get_lines_from(character_uid)
    url_content_loader
    return "#{file}: No such file or directory" if not File.exists?(file)
    lines = file_handler(@user_local_filename)
    lines.each do |line|
      puts line if line.include?(character_uid)
    end
  end

  private
  def get_url
    puts "Please enter the url: "
    return gets.chomp
  end

  def url_content_loader
    user_url = get_url
    File.open(@user_local_filename, 'w') do |file|
      file.write(open(user_url).read)
    end
  end

  def file_handler(file)
    return File.open(file).readlines
  end

end

runner = URL_Fetcher.new
# runner.get_every_42nd_line
runner.get_lines_from('Ham.')