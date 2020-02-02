# Write a method that takes a string as input.
# It should return true if the input is a valid IPv4 address.
# Valid IPs are anything between '0.0.0.0' and '255.255.255.255'.

class Validate_IPAddress
  def valid_ip?(string)
    octets = string.split('.')
    octets.each { |octet| (return false) if octet.to_i > 255 }
    return !!(string.match('\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}'))
  end
end

run = Validate_IPAddress.new
puts run.valid_ip?('1.1.1.1')

run = Validate_IPAddress.new
puts run.valid_ip?('256.2.2.2')