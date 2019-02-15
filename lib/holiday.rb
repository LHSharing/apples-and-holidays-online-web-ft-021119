require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  #### returns the string 'BBQ' without hardcoding it
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  ###iterates through winter holidays adds a supply to each one

  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
    #holiday_hash[:winter][holiday] << supply this is the same as the line above
    #binding.pry
  end

end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
####adds a supply to memorial day
holiday_hash[:spring][:memorial_day] << supply
#binding.pry
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
###modifies the original hash by adding supplies of a new holiday to a season
#season = :fall
#holiday_name = :columbus_day
#supply_array = [ARRAY] - ["Flags", "Parade Floats", "Italian Food"]
#binding.pry
holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
###has all the winter supplies
holiday_hash[:winter].values.flatten
#binding.pry
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
###should output the formatted list of holidays and their supplies
#key = :christmas
#holiday = {:christmas=>["Lights","Wreath"],:new_years=>["Party Hats"]}
#("  Christmas: Lights, Wreath")
holiday_hash.each do |season,holiday|
  season
binding.pry
end
end











=begin
holiday_hash.each do |season,holidays|
  holidays.each do |holiday,value|
    season.capitalize
    names = holiday.to_s.split("_")
    names.each do |name|
binding.pry
    name.capitalize.join
puts "#{names}: #{value}"

end
end
end
end
=end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end






#https://theflatironschool.typeform.com/to/jMLdwE
