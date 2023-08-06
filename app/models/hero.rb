require 'json'
require 'net/http'
require 'uri'

class Hero < ApplicationRecord

  def self.fill_from_api
    puts "Update BD from api...."
    parsed_url = URI.parse('https://overfast-api.tekrop.fr/heroes')
    response = Net::HTTP.get_response(parsed_url)

    re = response.body

    jp = JSON.parse(re)

    jp.each do |item|

      if Hero.where(key: "#{item['key']}").blank? == true
        Hero.create(key: "#{item['key']}", name: "#{item['name']}", portrait: "#{item['portrait']}", role: "#{item['role']}")
      end
    end


    #if Hero.where(key: "#{key}").blank? == true
    #Hero.create(key: "#{key}", name: "#{name}", portrait: "#{portrait}", role: "#{role}")
    #end

  end

end
