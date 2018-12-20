require 'httparty'
ottawa_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/?sets=ottawa-wards')
ottawa_wards_json = JSON.parse(ottawa_wards_response.body)
puts "OTTAWA WARDS"
puts "------------"
ottawa_wards_json['objects'].each do |ward|
    puts ward['name']
end

puts "------------"

toronto_candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/')
toronto_candidates_json = JSON.parse(toronto_candidates_response.body)

puts "TORONTO CANDIDATES"
puts "------------"
toronto_candidates_json['objects'].each do |candidate|
    puts "#{candidate['first_name']} #{candidate['last_name']} | #{candidate['party_name']}"
end