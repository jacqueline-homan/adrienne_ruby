require 'yaml'
require 'rubygems'
require 'nokogiri'

class Site; end

#puts YAML.dump Site.new

#doc = (File.exists?("#{APP_ROOT}/backup.yml") ? YAML.load_file("#{APP_ROOT}/backup.yml") : nil)

doc = YAML.load_file("#{APP_ROOT}/backup.yml")
output = Nokogiri::XML::Builder.new(:encoding => 'UTF-8', :standalone => 'yes') do |xml|
    
    #xml.object{
        #xml.id doc["getOrderDetails"]["Id"]
        #xml.name doc["getOrderDetails"]["Name"]
    #    xml.id doc["attributes"]["id"]
    #}
end
    #puts output.to_xml
