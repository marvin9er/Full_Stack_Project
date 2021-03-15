require 'open-uri'
require 'json'

def swapi_fetch(url)
  JSON.parse(open(url).read)
end

def full_url(url)
  "https://dnd5eapi.co#{url}"
end

Race.delete_all
Trait.delete_all
Subrace.delete_all
Language.delete_all

races = swapi_fetch('https://dnd5eapi.co/api/races/')


races['results'].each do |race_object|

  race_url = race_object['url']

  fetched_race = swapi_fetch(full_url(race_url))

  # t.string "index"
  # t.string "name"
  # t.integer "speed"
  # t.string "alignment"
  # t.string "age"
  # t.string "size"
  # t.string "size_desc"
  # t.string "language_desc"
  # t.string "url"

  race = Race.find_or_create_by(index:fetched_race['index'], name:fetched_race['name'], speed:fetched_race['speed'], alignment:fetched_race['alignment'], age:fetched_race['age'],
    size:fetched_race['size'], size_desc:fetched_race['size_desc'], language_desc:fetched_race['language_desc'],  url:fetched_race['url'])

    if fetched_race['subraces'].any?

      fetched_race['subraces'].each do |race_subrace|

        subrace_url = race_subrace['url']

        subrace = swapi_fetch(full_url(subrace_url))

        # t.string "index"
        # t.string "name"
        # t.string "race"
        # t.string "desc"
        # t.string "url"

        Subrace.create(index:subrace['index'], name:subrace['name'], race:race, desc:subrace['desc'], url:subrace['url'])

      end
    end


  if fetched_race['traits'].any?

      fetched_race['traits'].each do |race_trait|
        trait_url = race_trait['url']

        trait = swapi_fetch(full_url(trait_url))

        # t.string "index"
        # t.string "races"
        # t.string "subraces"
        # t.string "name"
        # t.string "desc"
        # t.string "url"

        Trait.create(index:trait['index'], name:trait['name'], desc:trait['desc'], url:trait['url'])


      end
  end

end

languages = swapi_fetch('https://dnd5eapi.co/api/languages')

languages['results'].each do |language_object|
  language_url = language_object['url']

  language = swapi_fetch(full_url(language_url))

  typical_speakers = ''

  language['typical_speakers'].each do |speaker|
    if !typical_speakers.eql? ''
      typical_speakers += ', '
    end
    typical_speakers += speaker
  end



  # t.string "index"
  # t.string "name"
  # t.string "type"
  # t.string "typical_speakers"
  # t.string "script"
  # t.string "url"

  Language.create(index:language['index'], name:language['name'], lang_type:language['type'], typical_speakers:typical_speakers, script:language['script'], url:language['url'])

end



