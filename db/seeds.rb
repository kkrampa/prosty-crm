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
                   first_name: 'Dummy1',
                   last_name: 'Dummy',
                   phone_number: '52442255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy1',
                   last_name: 'Dummy3',
                   phone_number: '52244255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy2',
                   last_name: 'Dummy12',
                   phone_number: '5142255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy231',
                   last_name: 'Dummy332',
                   phone_number: '522332355',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy12',
                   last_name: 'Dummy33',
                   phone_number: '522442255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy13',
                   last_name: 'Dummy33',
                   phone_number: '52244255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy12',
                   last_name: 'Dummy112',
                   phone_number: '5142255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy123',
                   last_name: 'Dummy332',
                   phone_number: '5223355',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy12',
                   last_name: 'Dummy33',
                   phone_number: '522442255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy13',
                   last_name: 'Dummy33',
                   phone_number: '52244255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy12',
                   last_name: 'Dummy112',
                   phone_number: '5142255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy123',
                   last_name: 'Dummy332',
                   phone_number: '5223355',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy1',
                   last_name: 'Dummy',
                   phone_number: '52442255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy1',
                   last_name: 'Dummy3',
                   phone_number: '52244255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy2',
                   last_name: 'Dummy12',
                   phone_number: '5142255',
                   users_id: users.first.id
               },
               {
                   first_name: 'Dummy231',
                   last_name: 'Dummy332',
                   phone_number: '522332355',
                   users_id: users.second.id
               },
               {
                   first_name: 'Dummy12',
                   last_name: 'Dummy33',
                   phone_number: '522442255',
                   users_id: users.second.id
               },
               {
                   first_name: 'Dummy13',
                   last_name: 'Dummy33',
                   phone_number: '52244255',
                   users_id: users.second.id
               },
               {
                   first_name: 'Dummy12',
                   last_name: 'Dummy112',
                   phone_number: '5142255',
                   users_id: users.second.id
               },
               {
                   first_name: 'Dummy123',
                   last_name: 'Dummy332',
                   phone_number: '5223355',
                   users_id: users.second.id
               },
               {
                   first_name: 'Dummy12',
                   last_name: 'Dummy33',
                   phone_number: '522442255',
                   users_id: users.second.id
               },
               {
                   first_name: 'Dummy13',
                   last_name: 'Dummy33',
                   phone_number: '52244255',
                   users_id: users.second.id
               },
               {
                   first_name: 'Dummy12',
                   last_name: 'Dummy112',
                   phone_number: '5142255',
                   users_id: users.second.id
               },
               {
                   first_name: 'Dummy123',
                   last_name: 'Dummy332',
                   phone_number: '5223355',
                   users_id: users.second.id
               }]
)