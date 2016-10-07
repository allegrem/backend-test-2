# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

office, sales, support = CompanyNumber.create [
  { sip_endpoint: 'sip:office161005092914@phone.plivo.com' },
  { sip_endpoint: 'sip:sales161005092935@phone.plivo.com' },
  { sip_endpoint: 'sip:support161005092956@phone.plivo.com' }
]

luke, jane, peter = User.create [{ name: 'Luke' }, { name: 'Jane' }, { name: 'Peter' }]

luke.user_numbers.create sip_endpoint: 'sip:luke161005092234@phone.plivo.com'
jane.user_numbers.create sip_endpoint: 'sip:jane161005092157@phone.plivo.com'
peter.user_numbers.create sip_endpoint: 'sip:peter161005092216@phone.plivo.com'

office.users << [luke, jane]
sales.users << [peter, jane]
support.users << [peter, luke, jane]
