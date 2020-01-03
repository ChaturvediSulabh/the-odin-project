require '../address_book'

describe 'first_name' do
  it 'takes first name of a customer and returns that first_name' do
    addr_book = Contact.new
    first_name = addr_book.first_name('Sulabh')
    expect(first_name).to eq('Sulabh')
  end
end

describe 'middle_name' do
  it 'takes middle name of a customer and returns that middle_name' do
    addr_book = Contact.new
    middle_name = addr_book.middle_name('kumar')
    expect(middle_name).to eq('kumar')
  end
end

describe 'last_name' do
  it 'takes first name of a customer and returns that first_name' do
    addr_book = Contact.new
    last_name = addr_book.last_name('Chaturvedi')
    expect(last_name).to eq('Chaturvedi')
  end
end

describe 'full_name' do
  it 'takes first_name, middle_name and last_name and returns them concatenated with a space' do
    addr_book = Contact.new
    addr_book.first_name('Sulabh')
    addr_book.last_name('Chaturvedi')
    full_name = addr_book.full_name
    expect(full_name).to eq('Sulabh Chaturvedi')

    addr_book.middle_name('Kumar')
    full_name = addr_book.full_name
    expect(full_name).to eq('Sulabh Kumar Chaturvedi')
  end
end

describe 'last_first' do
  it 'takes first_name, middle_name and last_name and returns them concatenated with a comma' do
    addr_book = Contact.new
    addr_book.first_name('Sulabh')
    addr_book.last_name('Chaturvedi')
    last_first = addr_book.last_first
    expect(last_first).to eq('Chaturvedi, Sulabh')

    addr_book.middle_name('Kumar')
    last_first = addr_book.last_first
    expect(last_first).to eq('Chaturvedi, Sulabh Kumar')
  end
end

describe 'to_s' do
  it 'takes format and returns the string' do
    addr_book = Contact.new
    addr_book.first_name('Sulabh')
    addr_book.last_name('Chaturvedi')
    name = addr_book.to_s('full_name')
    expect(name).to eq('Sulabh Chaturvedi')

    name = addr_book.to_s('last_first')
    expect(name).to eq('Chaturvedi, Sulabh')

    name = addr_book.to_s('blah blah')
    expect(name).to eq('Invalid Name Format')
  end
end