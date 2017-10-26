require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
   {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

  the_fourth_supply = holiday_hash[:summer][:fourth_of_july][1]
  the_fourth_supply
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
    if season == :winter
        data.each do |holiday, list|
          list << supply if holiday == :christmas
          list << supply if holiday == :new_years
        end
    end
  end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash.each do |season, data|
    if season == :spring
      data.each do |holiday, list|
        if holiday == :memorial_day
          list << supply
        end
      end
    end
  end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []

  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, list|
        list.each { |item| winter_supplies << item }
      end
    end
  end
  winter_supplies
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split('_').map(&:capitalize).join(' ')}: " + "#{supplies.join(', ')}"
    end

    # # ["party hats", "other things"]
    # => "party hats"
    # => split(" ").map(&:capitalize)
    # => ["Party Hats", "Other Things"]
    # => join(", ")
    # => "Party Hats, Other Things"
  end


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    bbq_holidays.concat(holidays.select {|holiday, supplies| supplies.include?("BBQ") }.keys)
  end
  bbq_holidays

  # holiday_hash.each do |season, data|
  #   data.each do |holiday, list|
  #     if list.include?("BBQ")
  #       holiday
  #     end
  #   end
  # end

end
