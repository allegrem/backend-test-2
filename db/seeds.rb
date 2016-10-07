# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create [
  { name: 'Luke', sip: 'sip:luke161005092234@phone.plivo.com' },
  { name: 'Jane', sip: 'sip:jane161005092157@phone.plivo.com' },
  { name: 'Peter', sip: 'sip:peter161005092216@phone.plivo.com' }
]
