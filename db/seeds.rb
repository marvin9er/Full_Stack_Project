require 'open-uri'
require 'json'

def swapi_fetch(url)
  JSON.parse(open(url).read)
end

def full_url(url)
  "https://dnd5eapi.co#{url}"
end

# races = swapi_fetch('https://dnd5eapi.co/api/races/')

# races['results'].each do |race_object|

#   race_url = race_object['url']

#   race = swapi_fetch(full_url(race_url))

#   subrace = ''

#   if race['subraces'].any?

#     race['subraces'].each do |race_subrace|

#       if !subrace.eql? ''
#         subrace += ', '
#       end
#       subrace += race_subrace['name']

#     end

#   end

#   # t.string "index"
#   # t.string "name"
#   # t.integer "speed"
#   # t.string "alignment"
#   # t.string "age"
#   # t.string "size"
#   # t.string "size_desc"
#   # t.string "language_desc"
#   # t.string "subraces"
#   # t.string "url"

#   Race.create(index:race['index'], name:race['name'], speed:race['speed'], alignment:race['alignment'], age:race['age'],
#      size:race['size'], size_desc:race['size_desc'], language_desc:race['language_desc'], subraces:subrace, url:race['url'])


# end


subraces = swapi_fetch('https://dnd5eapi.co/api/subraces/')

subraces['results'].each do |subrace_object|

  subrace_url = subrace_object['url']

  subrace = swapi_fetch(full_url(subrace_url))

  # t.string "index"
  # t.string "name"
  # t.string "race"
  # t.string "desc"
  # t.string "url"

  Subrace.create(index:subrace['index'], name:subrace['name'], race:subrace['race'], desc:subrace['desc'], url:subrace['url'])

end

# languages = swapi_fetch('https://dnd5eapi.co/api/languages')

# languages['results'].each do |language_object|
#   language_url = language_object['url']

#   language = swapi_fetch(full_url(language_url))

#   typical_speakers = ''

#   language['typical_speakers'].each do |speaker|
#     if !typical_speakers.eql? ''
#       typical_speakers += ', '
#     end
#     typical_speakers += speaker

#     puts typical_speakers
#   end



  # t.string "index"
  # t.string "name"
  # t.string "type"
  # t.string "typical_speakers"
  # t.string "script"
  # t.string "url"

#   Language.create(index:language['index'], name:language['name'], lang_type:language['type'], typical_speakers:typical_speakers, script:language['script'], url:language['url'])

# end


# traits = swapi_fetch('https://dnd5eapi.co/api/traits')

# traits['results'].each do |trait_object|
#   trait_url = trait_object['url']

#   trait = swapi_fetch(full_url(trait_url))

#   # t.string "index"
#   # t.string "races"
#   # t.string "subraces"
#   # t.string "name"
#   # t.string "desc"
#   # t.string "url"

#   Trait.create(index:trait['index'], races:trait['races'], subraces:trait['subraces'], name:trait['name'], desc:trait['desc'], url:trait['url'])

# end
