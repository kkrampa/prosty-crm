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
        password: 'password',
        password_confirmation: 'password'
    },
    {
        username: 'jnowak',
        password: 'password',
        password_confirmation: 'password'
    },
])

Contact.create([
     {
         first_name: 'Marcin',
         last_name: 'Kwiatkowski',
         phone_number: '52442255',
         users_id: users.first.id,
         email: 'mkwiatkowski@wp.pl',
         street: 'Graniczna',
         number: '25/11',
         city: 'Warszawa'
     },
     {
         first_name: 'Daniel',
         last_name: 'Danielewicz',
         phone_number: '52244255',
         users_id: users.first.id,
         email: 'ddanieliewicz@wp.pl',
         street: 'Piotrkowska',
         number: '25/11',
         city: 'Łódź'
     },
     {
         first_name: 'Wojciech',
         last_name: 'Bany',
         phone_number: '5142255',
         users_id: users.first.id,
         email: 'wbany@wp.pl',
         street: 'Osiedlowa',
         number: '23',
         city: 'Kraków'
     },
     {
         first_name: 'Paweł',
         last_name: 'Kowal',
         phone_number: '522332355',
         users_id: users.first.id,
         email: 'pkowal@wp.pl',
         street: 'Śląska',
         number: '11A',
         city: 'Warszawa'
     },
     {
         first_name: 'Zbigniew',
         last_name: 'Krzemiński',
         phone_number: '522442255',
         users_id: users.first.id,
         email: 'zkrzeminski@wp.pl',
         street: 'Pszeniczna',
         number: '1A',
         city: 'Poznań'
     },
     {
         first_name: 'Patryk',
         last_name: 'Donut',
         phone_number: '52244255',
         users_id: users.first.id,
         email: 'pdonut@wp.pl',
         street: 'Piłsudskiego',
         number: '17A',
         city: 'Wrocław'
     },
     {
         first_name: 'Katarzyna',
         last_name: 'Pąk',
         phone_number: '5142255',
         users_id: users.first.id,
         email: 'kpak@wp.pl',
         street: 'Węglowa',
         number: '60/20',
         city: 'Katowice'
     },
     {
         first_name: 'Kacper',
         last_name: 'Kisiel',
         phone_number: '5223355',
         users_id: users.first.id,
         email: 'kkisiel@wp.pl',
         street: 'Dmowskiego',
         number: '21',
         city: 'Gdynia'
     },
     {
         first_name: 'Jakub',
         last_name: 'Kondrat',
         phone_number: '522442255',
         users_id: users.first.id,
         email: 'jkondrat@wp.pl',
         street: 'Konopnickiej',
         number: '25/11',
         city: 'Bartoszyce'
     },
     {
         first_name: 'Adam',
         last_name: 'Adamski',
         phone_number: '52244255',
         users_id: users.first.id,
         email: 'aamski@wp.pl',
         street: 'Mickiewicza',
         number: '4',
         city: 'Gdańsk'
     },
     {
         first_name: 'Błażej',
         last_name: 'Modrzejewski',
         phone_number: '5142255',
         users_id: users.first.id,
         email: 'bmodrzejewski@wp.pl',
         street: 'Dąbka',
         number: '22',
         city: 'Warszawa'
     },
     {
         first_name: 'Daniel',
         last_name: 'Banasiak',
         phone_number: '5223355',
         users_id: users.first.id,
         email: 'dbanasiak@wp.pl',
         street: 'Wojskowa',
         number: '25/11',
         city: 'Lębork'
     },
     {
         first_name: 'Damian',
         last_name: 'Centek',
         phone_number: '52442255',
         users_id: users.first.id,
         email: 'dcentek@wp.pl',
         street: 'Graniczna',
         number: '25/11',
         city: 'Grudziądz'
     },
     {
         first_name: 'Andrzej',
         last_name: 'Gołota',
         phone_number: '52244255',
         users_id: users.first.id,
         email: 'agolota@wp.pl',
         street: 'Graniczna',
         number: '25/11',
         city: 'Nowy Jork'
     },
     {
         first_name: 'Krzysztof',
         last_name: 'Hołowczyc',
         phone_number: '5142255',
         users_id: users.first.id,
         email: 'kholowczyc@wp.pl',
         street: 'Samochodowa',
         number: '111',
         city: 'Płock'
     },
     {
         first_name: 'Jakub',
         last_name: 'Guzik',
         phone_number: '522332355',
         users_id: users.second.id,
         email: 'jguzik@wp.pl',
         street: 'Gdańska',
         number: '25',
         city: 'Opole'
     },
     {
         first_name: 'Tomasz',
         last_name: 'Gollob',
         phone_number: '522442255',
         users_id: users.second.id,
         email: 'tgollob@wp.pl',
         street: 'Żużlowa',
         number: '211',
         city: 'Legnica'
     },
     {
         first_name: 'Adam',
         last_name: 'Małysz',
         phone_number: '52244255',
         users_id: users.second.id,
         email: 'amalysz@wp.pl',
         street: 'Skoczna',
         number: '25/11',
         city: 'Wisła'
     },
     {
         first_name: 'Kamil',
         last_name: 'Stoch',
         phone_number: '5142255',
         users_id: users.second.id,
         email: 'kstoch@wp.pl',
         street: 'Okopowa',
         number: '16',
         city: 'Zakopane'
     },
     {
         first_name: 'Robert',
         last_name: 'Kubica',
         phone_number: '5223355',
         users_id: users.second.id,
         email: 'rkubica@wp.pl',
         street: 'Mobilna',
         number: '17',
         city: 'Płock'
     },
     {
         first_name: 'Hubert',
         last_name: 'Urbański',
         phone_number: '522442255',
         users_id: users.second.id,
         email: 'hurbanski@wp.pl',
         street: 'Graniczna',
         number: '25/11',
         city: 'Warszawa'
     },
     {
         first_name: 'Zbigniew',
         last_name: 'Wodecki',
         phone_number: '52244255',
         users_id: users.second.id,
         email: 'zwodecki@wp.pl',
         street: 'Muzyczna',
         number: '112',
         city: 'Kraków'
     },
     {
         first_name: 'Joanna',
         last_name: 'Krupa',
         phone_number: '5142255',
         users_id: users.second.id,
         email: 'jkrupa@wp.pl',
         street: 'Modna',
         number: '25/11',
         city: 'Warszawa'
     },
     {
         first_name: 'Anna',
         last_name: 'Mucha',
         phone_number: '5223355',
         users_id: users.second.id,
         email: 'amucha@wp.pl',
         street: 'Graniczna',
         number: '25/11',
         city: 'Warszawa'
     }]
)