require 'open-uri'
require 'nokogiri'

class Analyse
  attr_writer :file, :doc

  def initialize
    @file = '/tmp/file.xml'
  end

  def file_fetcher(uri)
    download =  open(uri)
    IO.copy_stream(download, @file)
    File.file?(@file)
  end

  def char_speech_count
    stats = Hash.new
    @doc = Nokogiri::XML(File.open(@file))
    speeches = @doc.xpath("//SPEECH")
    speeches.each do |speech|
      speaker = speech.to_s.scan(/<SPEAKER>.*<\/SPEAKER>/)
      speaker = speaker[0].sub("<SPEAKER>", "").sub("</SPEAKER>", "")
      lines = speech.to_s.scan(/<LINE>.*<\/LINE>/).length
      stats[speaker] = lines
      stats.has_key?(:speaker) ? stats[:speaker] += lines : stats[speaker] = lines
    end
    stats.each {|k, v| puts "#{v} #{k}"}
  end
end