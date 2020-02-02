require './lib/Event_manager'

RSpec.describe Event_Manager do

  before do
    @obj = Event_Manager.new
    @file = 'sample.csv'
  end

  describe "#uri" do
    it "accesses the url and saves the content in a file in hard disk" do
      expect(@obj.uri('https://raw.githubusercontent.com/TheOdinProject/curriculum/master/ruby_programming/intermediate_ruby/event_attendees.csv')).to eq(@file)
    end
  end

  describe "#play_with_csv" do
    it "opens a csv file and returns request column from a requested row" do
      expect(@obj.play_with_csv(@file, 0, 2)).to eq('Allison')
    end
  end

  describe "#get_zip_codes" do
    it "takes the file, attendee first_name and returns the zipcode of an attendee" do
      expect(@obj.get_zip_codes(@file, 'Allison')).to eq('20010')
    end
  end

  describe "#standardize_all_zipcodes" do
    it "takes the file, name and returns a zipcode of length equals to 5" do
      expect(@obj.standardize_all_zipcodes(@file, 'Laura')).to eq('00924')
    end
  end

end