class MyserivesController < ApplicationController
  		require 'nokogiri'
		require 'open-uri'
  def myhtml
      @doc = Nokogiri::HTML(open('http://nareshtrainings.com/'))
      @mytitle = @doc.at_css("title").text
      @myheading = @doc.xpath("//*[@id='jm-maincontent']/div[3]/h2").text
      @xml_doc = Nokogiri::XML(open("http://api.geonames.org/cities?north=44.1&south=-9.9&east=-22.4&west=55.2&username=demo"))
      @my_xml_result = @xml_doc.xpath("//countryCode")[1].text
  end

  def myxml
  end
end
