require 'open-uri'
require 'json'

def swapi_fetch(url)
  JSON.parse(open(url).read)
end

def full_url(url)
  "https://dnd5eapi.co#{url}"
end

races = swapi_fetch('https://dnd5eapi.co/api/races/')

races['results'].each do |race_object|

  race_url = race_object['url']

  race = swapi_fetch(full_url(race_url))

  subrace = ''

  if race['subraces'].any?

    race['subraces'].each do |race_subrace|

      if !subrace.eql? ''
        subrace += ', '
      end
      subrace += race_subrace['name']

    end

  end

  Race.create(index:race['index'], name:race['name'], speed:race['speed'], alignment:race['alignment'], age:race['age'],
     size:race['size'], size_desc:race['size_desc'], language_desc:race['language_desc'], subraces:subrace, url:race['url'])


end


subraces = swapi_fetch('https://dnd5eapi.co/api/subraces/')

subraces['results'].each do |subrace_object|

  subrace_url = subrace_object['url']

  subrace = swapi_fetch(full_url(subrace_url))




end


