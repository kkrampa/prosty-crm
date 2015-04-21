# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
    {
        username: 'jkowalski',
        email: 'jkowalski@dummy.com',
        password: 'password',
        password_confirmation: 'password'
    },
    {
        username: 'jnowak',
        email: 'jnowak@dummy.com',
        password: 'password',
        password_confirmation: 'password'
    },
])

Contact.create([
     {
         first_name: 'Marcin',
         last_name: 'Kwiatkowski',
         phone_number: '52442255',
         users_id: users.first.id
     },
     {
         first_name: 'Daniel',
         last_name: 'Danielewicz',
         phone_number: '52244255',
         users_id: users.first.id
     },
     {
         first_name: 'Wojciech',
         last_name: 'Bany',
         phone_number: '5142255',
         users_id: users.first.id
     },
     {
         first_name: 'Paweł',
         last_name: 'Kowal',
         phone_number: '522332355',
         users_id: users.first.id
     },
     {
         first_name: 'Zbigniew',
         last_name: 'Krzemiński',
         phone_number: '522442255',
         users_id: users.first.id
     },
     {
         first_name: 'Patryk',
         last_name: 'Donut',
         phone_number: '52244255',
         users_id: users.first.id
     },
     {
         first_name: 'Katarzyna',
         last_name: 'Pąk',
         phone_number: '5142255',
         users_id: users.first.id
     },
     {
         first_name: 'Kacper',
         last_name: 'Kisiel',
         phone_number: '5223355',
         users_id: users.first.id
     },
     {
         first_name: 'Jakub',
         last_name: 'Kondrat',
         phone_number: '522442255',
         users_id: users.first.id
     },
     {
         first_name: 'Adam',
         last_name: 'Adamski',
         phone_number: '52244255',
         users_id: users.first.id
     },
     {
         first_name: 'Błażej',
         last_name: 'Modrzejewski',
         phone_number: '5142255',
         users_id: users.first.id
     },
     {
         first_name: 'Daniel',
         last_name: 'Banasiak',
         phone_number: '5223355',
         users_id: users.first.id
     },
     {
         first_name: 'Damian',
         last_name: 'Centek',
         phone_number: '52442255',
         users_id: users.first.id
     },
     {
         first_name: 'Andrzej',
         last_name: 'Gołota',
         phone_number: '52244255',
         users_id: users.first.id
     },
     {
         first_name: 'Krzysztof',
         last_name: 'Hołowczyc',
         phone_number: '5142255',
         users_id: users.first.id
     },
     {
         first_name: 'Jakub',
         last_name: 'Guzik',
         phone_number: '522332355',
         users_id: users.second.id
     },
     {
         first_name: 'Tomasz',
         last_name: 'Gollob',
         phone_number: '522442255',
         users_id: users.second.id
     },
     {
         first_name: 'Adam',
         last_name: 'Małysz',
         phone_number: '52244255',
         users_id: users.second.id
     },
     {
         first_name: 'Kamil',
         last_name: 'Stoch',
         phone_number: '5142255',
         users_id: users.second.id
     },
     {
         first_name: 'Robert',
         last_name: 'Kubica',
         phone_number: '5223355',
         users_id: users.second.id
     },
     {
         first_name: 'Hubert',
         last_name: 'Urbański',
         phone_number: '522442255',
         users_id: users.second.id
     },
     {
         first_name: 'Zbigniew',
         last_name: 'Wodecki',
         phone_number: '52244255',
         users_id: users.second.id
     },
     {
         first_name: 'Joanna',
         last_name: 'Krupa',
         phone_number: '5142255',
         users_id: users.second.id
     },
     {
         first_name: 'Anna',
         last_name: 'Mucha',
         phone_number: '5223355',
         users_id: users.second.id
     }]
)