def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter][:christmas] << supply
    holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply
end 

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, holiday|
        puts "#{season.capitalize}:"
        holiday.each do |holiday, supplies|
            puts "  #{holiday.to_s.split("_").map {|holiday| holiday.capitalize}.join(" ")}: #{supplies.join(", ")}"
        end
    end
end

def all_holidays_with_bbq(holiday_hash)
    includes_bbq = []
    holiday_hash.each do |season, holiday|
        holiday.each do |holiday, supplies|
            if supplies.include?("BBQ") == true
                includes_bbq << holiday
            end
        end
    end
    includes_bbq
end






