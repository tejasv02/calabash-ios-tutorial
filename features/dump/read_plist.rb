#!/usr/bin/ruby -w
# encoding: utf-8

require 'plist'


def read_plist(plist_file)
  result=Plist::parse_xml(plist_file)
  i=0
  result.each { |k, v|
    i=i+1
    puts k
    puts v
    puts
  }
end

read_plist("features/dump/test.plist")