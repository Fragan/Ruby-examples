#!/bin/ruby

require 'enum'

class MyEnum < Enum
	enum_fields :index, :name

	NAME_ID = {}

	enum do
		BAR(0, "bar name")
		ZAR(1, "zar name")
	end

	MyEnum.each do |enum|
		NAME_ID.store(enum.name, enum.index)
	end

	def self.get_id(name)
		return NAME_ID.values_at(name)[0]
	end
end


if __FILE__ == $0
	puts "Enum: "<<MyEnum::BAR.index.to_s<<" - "<<MyEnum::BAR.name
	puts "Enum: "<<MyEnum::ZAR.index.to_s<<" - "<<MyEnum::ZAR.name

	puts "Enum: "<<MyEnum.get_id("bar name").to_s
end