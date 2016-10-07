# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create [{ name: 'Luke' }, { name: 'Jane' }, { name: 'Peter' }]

User.find_by_name('Luke').user_numbers.create sip_endpoint: 'sip:luke161005092234@phone.plivo.com'
User.find_by_name('Jane').user_numbers.create sip_endpoint: 'sip:jane161005092157@phone.plivo.com'
User.find_by_name('Peter').user_numbers.create sip_endpoint: 'sip:peter161005092216@phone.plivo.com'
