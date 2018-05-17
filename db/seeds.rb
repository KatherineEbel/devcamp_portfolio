topics = ['Rails', 'Angular', 'Software Engineering']
topics.each do |topic|
  Topic.create!(
    title: topic
  )
end

puts '3 topics created'

content = [
  'Listicle YOLO cliche lo-fi. Brunch craft beer chartreuse brooklyn, humblebrag mustache vape 3 wolf moon bitters offal health goth migas portland enamel pin. Subway tile iceland master cleanse, bitters flannel fixie literally ethical affogato blue bottle glossier. Health goth craft beer messenger bag chicharrones. Cliche quinoa disrupt asymmetrical fixie lomo etsy pickled gastropub flannel organic blog bitters copper mug +1.',
  'PBR&B vape messenger bag knausgaard freegan plaid vice taxidermy semiotics pitchfork bicycle rights wayfarers whatever tofu. Fashion axe thundercats gentrify, try-hard ramps offal flexitarian cred whatever edison bulb vinyl actually bitters letterpress. Fam readymade bushwick, knausgaard man bun meditation selfies brooklyn wayfarers fingerstache celiac pickled chia blog asymmetrical. Chicharrones street art before they sold out, shabby chic salvia tattooed retro everyday carry taiyaki slow-carb bicycle rights crucifix yuccie chillwave mumblecore. Fingerstache taiyaki pok pok air plant whatever cred blog, forage hashtag umami. Brooklyn biodiesel etsy whatever af master cleanse small batch cornhole crucifix snackwave coloring book.',
  "Banh mi vape drinking vinegar selvage chillwave meditation microdosing narwhal. Roof party live-edge banjo bicycle rights thundercats cronut master cleanse, sustainable hell of waistcoat. Godard authentic brunch skateboard adaptogen wayfarers chicharrones synth. Man bun craft beer retro, waistcoat biodiesel church-key iceland bicycle rights. Forage listicle activated charcoal mlkshk, schlitz tumeric godard kogi cornhole prism. Shabby chic chillwave af, ramps narwhal street art migas kombucha master cleanse fam wolf blog man bun you probably haven't heard of them echo park.",
  'Four dollar toast post-ironic intelligentsia coloring book iPhone hashtag gastropub migas man bun kickstarter tilde raw denim sartorial. Try-hard next level tote bag affogato tacos. Knausgaard tbh vegan squid mlkshk flannel. Readymade messenger bag crucifix kombucha. Next level dreamcatcher pop-up four loko vice twee actually humblebrag, cred mlkshk flannel woke PBR&B everyday carry bushwick. Trust fund lumbersexual jianbing, blog intelligentsia pour-over before they sold out fingerstache direct trade kinfolk hoodie letterpress cornhole.',
  "Heirloom seitan man braid, raclette umami photo booth air plant dreamcatcher meggings readymade knausgaard sustainable. Seitan mlkshk occupy vegan hexagon hella unicorn hell of church-key brooklyn man braid wayfarers locavore. Lyft etsy irony crucifix. Deep v succulents mixtape yuccie raclette gastropub tacos pop-up sriracha organic bitters synth franzen. Offal etsy chicharrones kinfolk vape, taxidermy edison bulb retro chillwave food truck. Before they sold out 90's copper mug lo-fi tbh, biodiesel actually food truck single-origin coffee aesthetic enamel pin woke.",
  "Post-ironic affogato listicle live-edge chartreuse iPhone art party hashtag actually tilde. Tofu vape air plant, art party four dollar toast fanny pack marfa kickstarter bitters keffiyeh migas beard you probably haven't heard of them. Glossier artisan forage, microdosing fingerstache aesthetic taiyaki helvetica PBR&B heirloom roof party. Forage la croix kale chips food truck cardigan selvage etsy prism celiac af. Asymmetrical brunch blue bottle hashtag skateboard tilde readymade cornhole typewriter gentrify retro.",
  "Thundercats put a bird on it locavore, street art 90's master cleanse celiac humblebrag brunch coloring book snackwave cornhole craft beer. Tumeric lomo mumblecore vinyl. Humblebrag PBR&B street art shoreditch gluten-free 8-bit wolf sriracha pabst activated charcoal health goth. Meditation raw denim pabst, iceland kitsch fam taxidermy af XOXO master cleanse cold-pressed fixie lumbersexual try-hard ugh. Asymmetrical deep v banh mi kickstarter fixie, semiotics tousled poke ethical glossier direct trade beard PBR&B meh. Glossier squid banh mi you probably haven't heard of them gastropub.",
  "Polaroid cardigan ramps vexillologist, cliche adaptogen wayfarers. Prism VHS shaman readymade marfa. Tilde slow-carb swag, artisan chia fam listicle irony. Coloring book keffiyeh retro, vaporware tacos you probably haven't heard of them meh lo-fi neutra +1 meggings. Flexitarian keytar literally, flannel letterpress crucifix tumeric chambray affogato messenger bag adaptogen taxidermy helvetica VHS. Food truck microdosing portland, farm-to-table humblebrag jean shorts pinterest.",
  'Poke tilde yuccie, marfa drinking vinegar umami gochujang tote bag green juice vaporware. Deep v iceland tote bag, vaporware kogi jianbing tacos poutine chillwave austin bushwick ethical authentic vinyl flannel. Neutra kitsch retro next level hot chicken live-edge seitan, adaptogen aesthetic skateboard craft beer tote bag yuccie slow-carb. Locavore tumblr YOLO, franzen four dollar toast pop-up brooklyn raw denim man braid affogato selfies asymmetrical irony.',
  'Master cleanse echo park marfa disrupt ramps cloud bread. Four dollar toast celiac cold-pressed raw denim banjo cardigan chia trust fund blue bottle biodiesel crucifix tousled iPhone organic. Shaman meggings cold-pressed paleo, tofu hoodie lo-fi cred bespoke enamel pin taxidermy pitchfork man braid lomo. Hell of retro chillwave, migas cronut deep v wolf humblebrag semiotics umami forage. Tbh shabby chic edison bulb vegan, before they sold out pok pok beard neutra crucifix cloud bread typewriter XOXO farm-to-table seitan lyft. Cardigan vinyl tote bag shabby chic asymmetrical hot chicken, ugh PBR&B wayfarers meh live-edge cloud bread banh mi tumblr disrupt.'
]


content.each_index do |i|
  Blog.create!(
    title: "My Blog Post #{i + 1}",
    body: content[i],
    topic_id: Topic.find(Random.new.rand(3) + 1).id
  )
end

puts '10 blog posts created'

skills = %w[Rails React Angular TypeScript JavaScript]
percent = Random.new
skills.each do |skill|
  Skill.create!(
    title: skill,
    percent_utilized: percent.rand(100)
  )
end

puts '5 skills posts created'

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item + 1}",
    subtitle: 'Ruby on Rails',
    body: 'Mixtape deep v drinking vinegar umami, whatever selvage edison bulb PBR&B activated charcoal dreamcatcher organic put a bird on it bespoke subway tile celiac. Offal narwhal kogi, vape tattooed prism mixtape hell of lomo craft beer. Chillwave kale chips normcore cronut 8-bit gentrify yuccie iPhone banjo edison bulb pop-up chia listicle before they sold out. Fashion axe banh mi ethical edison bulb locavore migas sriracha cornhole vice deep v YOLO. Sustainable iPhone mixtape etsy disrupt YOLO raw denim actually vegan pok pok gochujang beard. Tofu leggings brooklyn humblebrag, brunch cornhole bicycle rights chia unicorn aesthetic iPhone tbh williamsburg. Wayfarers tumeric drinking vinegar chambray, XOXO shabby chic man bun edison bulb gastropub waistcoat letterpress.',
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item + 1}",
    subtitle: 'Angular',
    body: 'Mixtape deep v drinking vinegar umami, whatever selvage edison bulb PBR&B activated charcoal dreamcatcher organic put a bird on it bespoke subway tile celiac. Offal narwhal kogi, vape tattooed prism mixtape hell of lomo craft beer. Chillwave kale chips normcore cronut 8-bit gentrify yuccie iPhone banjo edison bulb pop-up chia listicle before they sold out. Fashion axe banh mi ethical edison bulb locavore migas sriracha cornhole vice deep v YOLO. Sustainable iPhone mixtape etsy disrupt YOLO raw denim actually vegan pok pok gochujang beard. Tofu leggings brooklyn humblebrag, brunch cornhole bicycle rights chia unicorn aesthetic iPhone tbh williamsburg. Wayfarers tumeric drinking vinegar chambray, XOXO shabby chic man bun edison bulb gastropub waistcoat letterpress.',
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end

puts '9 portfolio projects posts created'

3.times do |technology|
  Technology.create!(
    name: "Technology #{technology}",
    portfolio_id: Portfolio.last.id
  )
end

puts '3 technologies created'
