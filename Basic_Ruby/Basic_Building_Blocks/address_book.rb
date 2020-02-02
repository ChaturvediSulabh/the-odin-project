class Contact
  attr_writer :first_name, :middle_name, :last_name
  def first_name(first_name)
    @first_name = first_name
  end

  def middle_name(middle_name)
    @middle_name = middle_name
  end

  def last_name(last_name)
    @last_name = last_name
  end

  def full_name
   @middle_name == nil ? @first_name + ' ' + @last_name : @first_name + ' ' + @middle_name + ' ' + @last_name
  end

  def last_first
     @middle_name == nil ? @last_name + ', ' + @first_name : @last_name + ', ' + @first_name + ' ' + @middle_name
  end

  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    else
      "Invalid Name Format"
    end
  end
end