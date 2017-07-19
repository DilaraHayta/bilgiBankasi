# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Customer.create(name: 'Allianz',
                  description: 'Allianz SE merkezi Almanyanın Münih kentinde bulunan dünyanın en büyük sigorta ve finansal yatırım şirketlerinden birisidir.',
                  sozlesme_yoneticisi: 'Can Özdemir',
                  sozlesme_no: '123456',
                  sozlesme_baslangıc: Time.now.to_datetime,
                  sozlesme_bitis: Time.now.to_datetime.end_of_day)
  Customer.create(name: 'YapıKredi Bankası', description: 'Yapı Kredi, 1944 yılında Türkiye de bireylerin daha uygun şartlarda konut sahibi olmalarını sağlamak amacıyla Kazım Taşkent tarafından kurulan Türkiye nin ilk özel bankasıdır.',
  sozlesme_yoneticisi: 'Can Özdemir',
  sozlesme_no: '123456',
  sozlesme_baslangıc: Time.now.to_datetime,
  sozlesme_bitis: Time.now.to_datetime.end_of_day)
  Customer.create(name: 'Dell', description: 'Dell, Teksas merkezli, Lenovo ve HP nin ardından dünyanın en büyük ikinci kişisel bilgisayar üreticisidir.',
  sozlesme_yoneticisi: 'Can Özdemir',
  sozlesme_no: '123456',
  sozlesme_baslangıc: Time.now.to_datetime,
  sozlesme_bitis: Time.now.to_datetime.end_of_day)
