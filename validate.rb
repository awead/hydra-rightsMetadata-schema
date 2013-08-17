require 'nokogiri'
xsd = Nokogiri::XML::Schema(open("schema.xsd"))
errors = xsd.validate ARGV[0]
if errors.count > 0
  puts errors
  puts "\e[31m#{errors.count.to_s} error(s) were found.\e[0m"
  exit 1;
else
  puts "\e[32mIt's valid!\e[0m"
  exit 0;
end