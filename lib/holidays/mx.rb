# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/mx.yaml, data/north_america_informal.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/mx'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module MX # :nodoc:
    DEFINED_REGIONS = [:mx, :mx_pue, :us, :ca]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 1, :name => "Día del Trabajo", :regions => [:mx]},
            {:mday => 5, :type => :informal, :name => "Cinco de Mayo", :regions => [:mx]},
            {:mday => 5, :name => "La Batalla de Puebla", :regions => [:mx_pue]},
            {:mday => 10, :type => :informal, :name => "Día de la Madre", :regions => [:mx]},
            {:mday => 15, :type => :informal, :name => "Día del Maestro", :regions => [:mx]},
            {:wday => 0, :week => 3, :type => :informal, :name => "Father's Day", :regions => [:us, :ca]}],
      11 => [{:mday => 1, :type => :informal, :name => "Todos los Santos", :regions => [:mx]},
            {:mday => 2, :type => :informal, :name => "Los Fieles Difuntos", :regions => [:mx]},
            {:wday => 1, :week => 3, :name => "Día de la Revolución", :regions => [:mx]}],
      6 => [{:wday => 0, :week => 3, :type => :informal, :name => "Día del Padre", :regions => [:mx]}],
      1 => [{:mday => 1, :name => "Año nuevo", :regions => [:mx]},
            {:mday => 6, :name => "Dia de los Santos Reyes", :regions => [:mx]}],
      12 => [{:mday => 12, :type => :informal, :name => "Día de la Virgen de Guadalupe", :regions => [:mx]},
            {:mday => 24, :type => :informal, :name => "Nochebuena", :regions => [:mx]},
            {:mday => 25, :name => "Navidad", :regions => [:mx]},
            {:mday => 28, :name => "Los Santos Inocentes", :regions => [:mx]}],
      2 => [{:wday => 1, :week => 1, :name => "Día de la Constitución", :regions => [:mx]},
            {:mday => 2, :type => :informal, :name => "Groundhog Day", :regions => [:us, :ca]},
            {:mday => 14, :type => :informal, :name => "Valentine's Day", :regions => [:us, :ca]}],
      3 => [{:wday => 1, :week => 3, :name => "Natalicio de Benito Juárez", :regions => [:mx]},
            {:mday => 17, :type => :informal, :name => "St. Patrick's Day", :regions => [:us, :ca]}],
      9 => [{:mday => 15, :name => "Grito de Dolores", :regions => [:mx]},
            {:mday => 16, :name => "Día de la Independencia", :regions => [:mx]}],
      4 => [{:mday => 30, :type => :informal, :name => "Día del Niño", :regions => [:mx]},
            {:mday => 1, :type => :informal, :name => "April Fool's Day", :regions => [:us, :ca]},
            {:mday => 22, :type => :informal, :name => "Earth Day", :regions => [:us, :ca]}],
      10 => [{:mday => 12, :type => :informal, :name => "Día de la Raza", :regions => [:mx]},
            {:mday => 31, :type => :informal, :name => "Halloween", :regions => [:us, :ca]}]
    }
  end


end

Holidays.merge_defs(Holidays::MX::DEFINED_REGIONS, Holidays::MX::HOLIDAYS_BY_MONTH)
