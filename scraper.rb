#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new('Category:Malian politicians', 'en').member_titles |
     WikiData::Category.new('Category:Malian women in politics', 'en').member_titles |
     WikiData::Category.new('Category:Government ministers of Mali', 'en').member_titles |
     WikiData::Category.new('Category:Prime Ministers of Mali', 'en').member_titles |
     WikiData::Category.new('Category:Members of the National Assembly (Mali)', 'en').member_titles |
     WikiData::Category.new('Category:Presidents of the National Assembly (Mali)', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en })

