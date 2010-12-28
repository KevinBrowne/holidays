# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/ca.yaml, data/north_america_informal.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/ca'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module CA # :nodoc:
    DEFINED_REGIONS = [:ca, :ca_qc, :ca_nf, :ca_nt, :ca_nu, :ca_ab, :ca_on, :ca_sk, :ca_mb, :ca_bc, :ca_ns, :ca_yk, :us]

    HOLIDAYS_BY_MONTH = {
      5 => [{:function => lambda { |year| Holidays.ca_victoria_day(year) }, :function_id => "ca_victoria_day(year)", :name => "Victoria Day", :regions => [:ca]},
            {:function => lambda { |year| Holidays.ca_victoria_day(year) }, :function_id => "ca_victoria_day(year)", :name => "National Patriotes Day", :regions => [:ca_qc]},
            {:wday => 0, :week => 3, :type => :informal, :name => "Father's Day", :regions => [:us, :ca]}],
      0 => [{:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Good Friday", :regions => [:ca]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :type => :informal, :name => "Easter Monday", :regions => [:ca]}],
      11 => [{:mday => 11, :name => "Remembrance Day", :regions => [:ca]}],
      6 => [{:mday => 24, :name => "Discovery Day", :regions => [:ca_nf]},
            {:mday => 24, :name => "Fête Nationale", :regions => [:ca_qc]},
            {:mday => 21, :name => "National Aboriginal Day", :regions => [:ca_nt]}],
      1 => [{:mday => 1, :name => "New Year's Day", :regions => [:ca]},
            {:mday => 2, :name => "New Year's", :regions => [:ca_qc]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:ca]},
            {:mday => 26, :name => "Boxing Day", :regions => [:ca]}],
      7 => [{:mday => 1, :observed => lambda { |date| Holidays.to_monday_if_sunday(date) }, :observed_id => "to_monday_if_sunday", :name => "Canada Day", :regions => [:ca]},
            {:mday => 12, :name => "Orangemen's Day", :regions => [:ca_nf]},
            {:mday => 9, :name => "Nunavut Day", :regions => [:ca_nu]}],
      2 => [{:wday => 1, :week => 3, :name => "Family Day", :regions => [:ca_ab, :ca_on, :ca_sk]},
            {:wday => 1, :week => 3, :name => "Louis Riel Day", :regions => [:ca_mb]},
            {:mday => 2, :type => :informal, :name => "Groundhog Day", :regions => [:us, :ca]},
            {:mday => 14, :type => :informal, :name => "Valentine's Day", :regions => [:us, :ca]}],
      8 => [{:wday => 1, :week => 1, :name => "BC Day", :regions => [:ca_bc]},
            {:wday => 1, :week => 1, :name => "Saskatchewan Day", :regions => [:ca_sk]},
            {:wday => 1, :week => 1, :name => "Heritage Day", :regions => [:ca_ab]},
            {:wday => 1, :week => 1, :name => "Natal Day", :regions => [:ca_ns]},
            {:wday => 1, :week => 1, :name => "Civic Holiday", :regions => [:ca_on]},
            {:wday => 1, :week => 3, :name => "Discovery Day", :regions => [:ca_yk]}],
      3 => [{:mday => 23, :name => "St. George's Day", :regions => [:ca_nf]},
            {:mday => 17, :type => :informal, :name => "St. Patrick's Day", :regions => [:us, :ca]}],
      9 => [{:wday => 1, :week => 1, :name => "Labour Day", :regions => [:ca]}],
      4 => [{:mday => 1, :type => :informal, :name => "April Fool's Day", :regions => [:us, :ca]},
            {:mday => 22, :type => :informal, :name => "Earth Day", :regions => [:us, :ca]}],
      10 => [{:wday => 1, :week => 2, :name => "Thanksgiving", :regions => [:ca]},
            {:mday => 31, :type => :informal, :name => "Halloween", :regions => [:us, :ca]}]
    }
  end

# Monday on or before May 24
def self.ca_victoria_day(year)
  date = Date.civil(year,5,24)
  if date.wday > 1
    date -= (date.wday - 1)
  elsif date.wday == 0
    date -= 6
  end
  date
end



end

Holidays.merge_defs(Holidays::CA::DEFINED_REGIONS, Holidays::CA::HOLIDAYS_BY_MONTH)
