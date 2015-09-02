#!/usr/bin/env ruby

#Gems
require 'uri'
require 'net/http'

#URI to post to
uri = URI.parse("https://app.close.io/hackwithus/")

#Build post request
req = Net::HTTP::Post.new(uri, initheader = {'Content-Type' =>'application/json'})
req.body = File.read("close.io.json")

#Create new request over ssl
res = Net::HTTP::start(uri.host, uri.port, use_ssl: true) do |http|
  http.request(req)
end

puts res.body
