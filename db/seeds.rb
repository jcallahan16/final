Brand.delete_all
nike = Brand.create(:name=> "Nike", :logo_url => "http://bootstrapbit.com/wp-content/uploads/2014/05/nike-logo-blue-background-wallpaper-hd-wallpaper-wallpapermine-1knqyzh1.jpg")
adidas = Brand.create(:name=> "Adidas", :logo_url => "http://goodlogo.com/images/logos/adidas_logo_2459.gif")
wilson = Brand.create(:name=> "Wilson", :logo_url => "http://www.fontanasports.com/images/brand_logos/WILSON.jpg")
rawlings = Brand.create(:name=> "Rawlings", :logo_url => "http://asklogo.com/images/R/rawlings%20logo.jpg")
ls = Brand.create(:name=> "Louisville Slugger", :logo_url => "http://b-i.forbesimg.com/darrenheitner/files/2013/03/HB-Trademark_2013.jpg")
reebock = Brand.create(:name=> "Reebock", :logo_url => "http://store.hypebeast.com/media/image/2013/08/reebok-logo.jpg?c3b7c7a")
spaulding = Brand.create(:name=> "Spaulding", :logo_url => "http://www.va-school.com/va/sg_userfiles/SpaldingLogoBlack.jpg")
nb = Brand.create(:name=> "New Balance", :logo_url => "http://vegankicks.com/wp-content/uploads/2010/05/New-Balance-Logo.jpg")

Sport.delete_all
base = Sport.create("sport_name" => "Baseball")
fb = Sport.create("sport_name" => "Football")
bx = Sport.create("sport_name" => "Boxing")
sc = Sport.create("sport_name" => "Soccer")
vb = Sport.create("sport_name" => "Volleyball")
bb = Sport.create("sport_name" => "Basketball")

Team.delete_all
brs = Team.create("name" => "Boston Red Sox", "sport_id" => base.id, "logo" => "http://www.sports-logos-screensavers.com/user/Boston_Red_Sox8.jpg")
gbp = Team.create("name" => "Green Bay Packers", "sport_id" => fb.id, "logo" => "http://content.sportslogos.net/logos/7/171/full/dcy03myfhffbki5d7il3.gif")
nyk = Team.create("name" => "New York Knicks", "sport_id" => bb.id, "logo" => "http://g.fastcompany.net/multisite_files/codesign/imagecache/inline-large/post-inline/NYKNICKS_Logo-Final.jpg")
pt = Team.create("name" => "Portland Thorns", "sport_id" => sc.id, "logo" => "http://s3-us-west-2.amazonaws.com/opb-media/news/2012/12/Portland_ThornsFC_Primary_7adcf5d1466ee49cf4ab6a2b440cbc6b_620x480.jpg?utm_source=www.dailyastorian.com&utm_medium=referral&utm_campaign=publish2")
nabx = Team.create("name" => "N/A", "sport_id" => bx.id, "logo" => " ")
navb = Team.create("name" => "N/A", "sport_id" => vb.id, "logo" => " ")


Athlete.delete_all
dp = Athlete.create(:first_name => "Dustin", "last_name" => "Pedroia", "image_url" => "http://a.espncdn.com/combiner/i?img=/i/headshots/mlb/players/full/6393.png&w=350&h=254", :team_id => brs.id, :sport_id => base.id, "twitter_name" => "@15LaserShow", "position" => "Infielder")
cm = Athlete.create(:first_name => "Clay", "last_name" => "Matthews", "image_url" => "http://www2.pictures.zimbio.com/gi/Clay+Matthews+Super+Bowl+XLV+Media+Day+d0ApcvEK1Z1l.jpg", :team_id => gbp.id, :sport_id => fb.id, "twitter_name" => "@ClayMatthews52", "position" => "Linebacker")
mp = Athlete.create(:first_name => "Manny", "last_name" => "Pacquiáo", "image_url" => "http://img.timeinc.net/time/daily/2009/0911/360_wmanny_1116.jpg", :team_id => nabx.id, :sport_id => bx.id, "twitter_name" => "@MannyPacquiao", "position" => "N/A")
mmt = Athlete.create(:first_name => "Misty", "last_name" => "May Treanor", "image_url" => "http://cdn-jpg.thedailymeal.com/sites/default/files/6-20_misty_may-treanor_headshot_0.jpg", :team_id => navb.id, :sport_id => vb.id, "twitter_name" => "@MistyMayTreanor", "position" => "N/A")
ca = Athlete.create(:first_name => "Carmelo", "last_name" => "Anthony", "image_url" => "http://i.huffpost.com/gen/1582890/thumbs/o-CARMELO-ANTHONY-facebook.jpg", :team_id => nyk.id, :sport_id => bb.id, "twitter_name" => "@CarmeloAnthony", "position" => "Small Forward")
am = Athlete.create(:first_name => "Alex", "last_name" => "Morgan", "image_url" => "http://i2.cdn.turner.com/si/dam/assets/130506123513-alex-morgan-single-image-cut.jpg", :team_id => pt.id, :sport_id => sc.id, "twitter_name" => "@AlexMorgan13", "position" => "Forward")



Product.delete_all
Product.create("name" => "Nike Air Max", "picture" => "http://bootstrapbit.com/wp-content/uploads/2014/04/air-max-nike-womenwomen-nike-air-max-2012-black-and-pink--nike211451m-----8153-wkofnuxg.jpg", "url" => "http://www.amazon.com/Nike-Womens-Air-2012-Crimson-Electric/dp/B007L8930M/ref=sr_1_3?ie=UTF8&qid=1401468153&sr=8-3&keywords=nike+air+max+women", "athlete_id" => am.id, "brand_id" => nike.id)
Product.create("name" => "Clay Matthews Jersey", "picture" => "http://images.nike.com/is/image/DotCom/pwp_sheet?$NIKE_PWPx3$&$img0=468891_325", "url" => "http://store.nike.com/us/en_us/pd/green-bay-packers-elite-jersey-clay-matthews-football-jersey/pid-516551/pgid-1538829", "athlete_id" => cm.id, "brand_id" => nike.id)
Product.create("name" => "HyperKO Boxing Shoes", "picture" => "http://s508a93a5dcd43.img.gostorego.com/809E82/cdn/media/s5/08/a9/3a/5d/cd/43/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/o/b/obsidianwlogo.jpg", "url" => "http://store.athleteps.com/nike-boxing/nike-hyperko-mp-white-royal-red.html#.U4i2n5RdW5Z", "athlete_id" => mp.id, "brand_id" => nike.id)
Product.create("name" => "Misty May Volleyball", "picture" => "http://ecx.images-amazon.com/images/I/91q8ezROEmL._SL1500_.jpg", "url" => "http://www.amazon.com/Spalding-Misty-Pink-Plaid-Volleyball/dp/B009D3JHJ0/ref=sr_1_1?ie=UTF8&qid=1401468780&sr=8-1&keywords=spalding+misty+may", "athlete_id" => mmt.id, "brand_id" => spaulding.id)
Product.create("name" => "Pedroia Low Cut Baseball Cleat", "picture" => "http://s7d5.scene7.com/is/image/NB/l4040pk2_nb_14_i?$dw_detail_main_lg$&hei=550&wid=1035", "url" => "http://www.newbalance.com/Pedroia-Low-Cut-4040v2/L4040-V2P,default,pd.html?dwvar_L4040-V2P_color=Black_with_White", "athlete_id" => dp.id, "brand_id" => nb.id)
Product.create("name" => "Melo Jordan Shoes", "picture" => "http://images.footlocker.com/is/image//EBFL/31310007_fr_ven_sc7?hei=500&wid=500", "url" => "http://www.footlocker.com/_-_/keyword-carmelo+anthony+shoes?cm=searchbasketballshoes", "athlete_id" => ca.id, "brand_id" => nike.id)
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
