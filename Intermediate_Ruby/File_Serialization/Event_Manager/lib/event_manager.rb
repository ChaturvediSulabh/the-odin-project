require 'open-uri'
require 'csv'

puts "EventManager Initialized"

class Event_Manager
  attr_reader :filename

  def initialize
    @filename = 'sample.csv'
  end

  def uri(url)
    File.open(@filename, 'w') do |file|
      file.write(open(url).read)
    end
    return @filename
  end

  def play_with_csv(file, row, column)
    lines = CSV.open(file, headers: true, header_converters: :symbol)
    lines.each_with_index do |line, idx|
      return line[:first_name] if idx == row
    end
  end

  def get_zip_codes(file, name)
    lines = CSV.open(file, headers: true, header_converters: :symbol)
    lines.each { |line| return line[:zipcode] if name == line[:first_name] }
  end

  def standardize_all_zipcodes(file, name)
    lines = CSV.open(file, 'a+', headers: true, header_converters: :symbol)
    lines.each do |line|
      val = line[:zipcode].to_s.length <=> 5
      case val
      when 0
        line[:zipcode] = line[:zipcode].to_s
      when 1
        line[:zipcode] = line[:zipcode][0..4].to_s
      when -1
        line[:zipcode] = line[:zipcode].to_s.rjust 5, "0"
      end
      return line[:zipcode].to_s if line[:first_name] == name
    end
  end

end