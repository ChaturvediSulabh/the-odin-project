require '../analysing_shakespere'

describe 'download_file' do
  it 'checks if the file exists that\'s been downladed from the internet and returns the result' do
    analyse = Analyse.new
    file = analyse.file_fetcher('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')
    expect(file).to eq(true)
  end
end

describe 'xml_parse' do
  it 'parses the xml file and returns the number of lines spoken by each character in the play' do
    analyse = Analyse.new
    analyse.file_fetcher('http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')
    result = analyse.char_speech_count
    expect(result).not_to be_empty
  end
end
