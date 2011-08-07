# -*- encoding: utf-8 -*-

lib = File.expand_path('../../flickraw/lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require "flickraw"

begin
JSON.load(open("#{ENV['HOME']}/.flickraw.json")).each {|k,v| FlickRaw.send :"#{k}=", v} 
rescue
end

open("flickraw-cached.rb", "w") {|f|
  f.puts %{require 'flickraw'}
  f.puts %{FlickRaw::VERSION << '.#{Time.now.strftime("%Y%m%d")}-cached'} 
  f.puts 'ms = %w{' + flickr.reflection.getMethods.to_a.join(' ') + '}'
  f.puts %{FlickRaw::Flickr.build(ms)}
}

Gem::Specification.new do |s|
  s.name = "flickraw-cached"
  s.summary = "Cached version of Flickraw"
  s.author = "Maël Clérambault"
  s.email =  "mael@clerambault.fr"
  s.homepage = "http://hanklords.github.com/flickraw/"
  s.version = Time.now.strftime("%Y%m%d")
  s.files = %w{flickraw-cached.rb}
  s.require_path = '.'
  s.add_dependency "flickraw", ">= 0.9"
end
