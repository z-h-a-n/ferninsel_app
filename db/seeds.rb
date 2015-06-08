# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Island.delete_all
Creature.delete_all

u1 = User.create(name: 'zhan')
u2 = User.create(name: 'sammy')

i1 = Island.create(name: 'bear island', size: 178, population: 9, region: 'arctic', latitude: 74.516667, longitude: 19.016667)
i2 = Island.create(name: 'lonely island', size: 20, population: 0, region: 'arctic', latitude: 77.483333, longitude: 82.5)
i3 = Island.create(name: 'ascension island', size: 88, population: 880, region: 'atlantic', latitude: -7.933333, longitude: -14.416667)
i4 = Island.create(name: 'bouvet island', size: 49, population: 0, region: 'atlantic', latitude: -54.43, longitude: 3.38)
i5 = Island.create(name: 'saint helena', size: 121, population: 4255, region: 'atlantic', latitude: -15.95, longitude: -5.716667)
i6 = Island.create(name: 'st kilda', size: 8, population: 0, region: 'atlantic', latitude: 57.816667, longitude: -8.583333)
i7 = Island.create(name: 'ile amsterdam', size: 55, population: 25, region: 'indian', latitude: -37.825833, longitude: 77.554722)
i8 = Island.create(name: 'christmas island', size: 135, population: 2072, region: 'indian', latitude: -10.483333, longitude: 105.633333)
i9 = Island.create(name: 'ile crozet', size: 352, population: 18, region: 'indian', latitude: -46.416667, longitude: 51.983333)
i10 = Island.create(name: 'diego garcia', size: 44, population: 4239, region: 'indian', latitude: -7.313333, longitude: 72.411111)
i11 = Island.create(name: 'antipodes islands', size: 22, population: 0, region: 'pacific', latitude: -49.6667, longitude: 178.766667)
i12 = Island.create(name: 'atlasov island', size: 119, population: 0, region: 'pacific', latitude: 50.860833, longitude: 155.564167)
i13 = Island.create(name: 'banaba island', size: 6, population: 335, region: 'pacific', latitude: -0.859444, longitude: 169.536944)
i14 = Island.create(name: 'bokak atoll', size: 3, population: 0, region: 'pacific', latitude: 14.533333, longitude: 169)
i15 = Island.create(name: 'campbell island', size: 113, population: 0, region: 'pacific', latitude: -52.54, longitude: 169.145)
i16 = Island.create(name: 'clipperton island', size: 6, population: 0, region: 'pacific', latitude: 10.3, longitude: -109.216667)
i17 = Island.create(name: 'cocos island', size: 24, population: 0, region: 'pacific', latitude: 5.518889, longitude: -87.071667)
i18 = Island.create(name: 'easter island', size: 164, population: 6148, region: 'pacific', latitude: -27.116667, longitude: -109.366667)
i19 = Island.create(name: 'deception island', size: 72, population: 0, region: 'antarctica', latitude: -62.976944, longitude: -60.65)
i20 = Island.create(name: 'peter i island', size: 154, population: 0, region: 'antarctica', latitude: -68.85, longitude: -90.583333)

c1 = i18.creatures.create(breed: 'Moai')
c2 = i1.creatures.create(breed: 'arctic fox')
c3 = i1.creatures.create(breed: 'sea bird')
c4 = i14.creatures.create(breed: 'shark')
c5 = i14.creatures.create(breed: 'Red-footed booby')

u1.user_islands.create(island_id: i1.id)
u1.user_islands.create(island_id: i2.id)
u1.user_islands.create(island_id: i18.id)
u2.user_islands.create(island_id: i14.id)
u2.user_islands.create(island_id: i9.id)


































