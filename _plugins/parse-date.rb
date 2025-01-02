require "time"

module Jekyll
  module ParseDateFilter
    def parse_date(input)
      return nil if input.nil?
      Time.parse(input)
    end
  end
end

Liquid::Template.register_filter(Jekyll::ParseDateFilter)
