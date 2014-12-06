require 'yaml'
#require 'nokogiri'

#doc = (File.exists?("#{APP_ROOT}/backup.yml") ? YAML.load_file("#{APP_ROOT}/backup.yml") : nil)

doc = YAML.load_file("#{APP_ROOT}/backup.yml")

output = Nokogiri::XML::Builder.new do |xml|
    xml.object{
        #xml.id doc["getOrderDetails"]["Id"]
        #xml.name doc["getOrderDetails"]["Name"]
        xml.id doc["attributes"]["id"]
    }
end
puts output.to_xml
