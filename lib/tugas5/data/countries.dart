class Country {
  var data = [
    {
      'id': '1',
      'name': 'Jepang',
      'capital': 'Tokyo',
      'iconURL': 'https://flagcdn.com/w320/jp.png',
      'imageURL': 'https://images.unsplash.com/photo-1540959733332-0b10da0c5d84?w=500',
      'shortDescription': 'Negeri matahari terbit',
      'description': 'Jepang adalah negara kepulauan di Asia Timur yang terdiri dari 6.852 pulau. Negara ini dikenal sebagai "Negeri Matahari Terbit" dan memiliki perpaduan unik antara tradisi kuno dan teknologi modern. Tokyo, ibu kotanya, adalah metropolitan terpadat di dunia dengan gedung-gedung pencakar langit futuristik berdampingan dengan kuil-kuil bersejarah. Jepang terkenal dengan kuliner khas seperti sushi, ramen, dan tempura, serta budaya populer seperti anime, manga, dan video game. Negara ini juga memiliki landscape yang indah dengan Gunung Fuji sebagai ikon utamanya dan musim semi yang menampilkan keindahan bunga sakura.'
    },
    {
      'id': '2',
      'name': 'Prancis',
      'capital': 'Paris',
      'iconURL': 'https://flagcdn.com/w320/fr.png',
      'imageURL': 'https://images.unsplash.com/photo-1502602898536-47ad22581b52?w=500',
      'shortDescription': "La France de L'Hexagone",
      'description': "Prancis, dikenal sebagai L'Hexagone' karena bentuk geometrisnya, adalah negara dengan warisan budaya yang sangat kaya di Eropa Barat. Paris, ibu kotanya yang dijuluki 'Kota Cahaya', adalah rumah bagi landmark ikonik seperti Menara Eiffel, Museum Louvre yang menyimpan Mona Lisa, dan Katedral Notre-Dame. Prancis adalah pusat seni, fashion, dan kuliner dunia, dengan masakannya yang diakui UNESCO sebagai Warisan Budaya Takbenda. Negara ini juga terkenal dengan wilayah wine seperti Bordeaux dan Champagne, serta Riviera Prancis yang mempesona. Prancis memiliki sejarah panjang dari era Romawi hingga Revolusi Prancis yang mengubah wajah Eropa."
    },
    {
      'id': '3',
      'name': 'Brazil',
      'capital': 'Brasília',
      'iconURL': 'https://flagcdn.com/w320/br.png',
      'imageURL': 'https://images.unsplash.com/photo-1587336815532-0a7e7f3345c9?w=500',
      'shortDescription': "Negeri Samba & Seleção",
      'description': 'Brazil adalah negara terbesar di Amerika Selatan dan kelima terbesar di dunia, terkenal dengan keanekaragaman hayati yang luar biasa. Hutan Amazon yang mencakup 60% wilayah Brazil adalah hutan hujan terbesar di dunia dan rumah bagi jutaan spesies flora dan fauna. Negara ini memiliki budaya yang dinamis dengan pengaruh kuat dari Portugis, Afrika, dan penduduk asli. Brazil adalah tanah kelahiran samba, bossa nova, dan festival Karnaval Rio de Janeiro yang megah. Sepak bola adalah passion nasional, dengan legenda seperti Pelé dan Neymar. Brasília, ibu kota yang dirancang oleh Oscar Niemeyer, adalah masterpiece arsitektur modern dan masuk Situs Warisan Dunia UNESCO.'
    },
    {
      'id': '4',
      'name': 'Mesir',
      'capital': 'Kairo',
      'iconURL': 'https://flagcdn.com/w320/eg.png',
      'imageURL': 'https://images.unsplash.com/photo-1539650116574-75c0c6d73f6e?w=500',
      'shortDescription': "Negeri Piramida",
      'description': 'Mesir, dikenal sebagai "Hadiah Sungai Nil", adalah peradaban kuno yang memiliki sejarah lebih dari 5.000 tahun. Negara di Afrika Utara ini adalah rumah bagi piramida Giza yang megah, Sphinx yang misterius, dan lembah para raja tempat makam Tutankhamun ditemukan. Kairo, ibu kotanya, adalah kota terbesar di dunia Arab dengan kehidupan yang hiruk-pikuk dan warisan Islam yang kaya. Sungai Nil, sungai terpanjang di dunia, telah menjadi sumber kehidupan bagi peradaban Mesir sejak zaman firaun. Mesir juga memiliki terumbu karang Laut Merah yang spektakuler dan oasis di gurun Sahara yang luas. Warisan budaya Mesir kuno dalam bidang matematika, astronomi, dan arsitektur masih memengaruhi dunia modern.'
    },
    {
      'id': '5',
      'name': 'Australia',
      'capital': 'Canberra',
      'iconURL': 'https://flagcdn.com/w320/au.png',
      'imageURL': 'https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?w=500',
      'shortDescription': "Negeri Kanguru",
      'description': 'Australia adalah benua sekaligus negara yang terletak di belahan bumi selatan, dikenal dengan landscape yang beragam dan satwa endemik yang unik. Negara ini memiliki lebih dari 10.000 pantai, gurun merah yang luas, hutan hujan tropis, dan Great Barrier Reef - sistem terumbu karang terbesar di dunia. Australia adalah rumah bagi hewan ikonik seperti kanguru, koala, wombat, dan platipus. Canberra, ibu kota yang direncanakan dengan cermat, menawarkan institusi budaya nasional seperti Australian War Memorial. Australia memiliki masyarakat multikultural dengan penduduk asli Aborigin yang memiliki sejarah budaya lebih dari 65.000 tahun. Negara ini juga terkenal dengan olahraga seperti kriket, rugby, dan Australian Rules Football.'
    },
    {
      'id': '6',
      'name': 'Kanada',
      'capital': 'Ottawa',
      'iconURL': 'https://flagcdn.com/w320/ca.png',
      'imageURL': 'https://images.unsplash.com/photo-1599085144266-6d8406d7a694?w=500',
      'shortDescription': "~Land of the Maple Leaf~",
      'description': 'Kanada adalah negara terbesar kedua di dunia yang membentang dari Samudra Atlantik hingga Pasifik, dan ke utara menuju Samudra Arktik. Negara ini terkenal dengan landscape alamnya yang spektakuler termasuk Pegunungan Rocky, Great Lakes, dan aurora borealis di Yukon. Kanada adalah negara bilingual dengan bahasa resmi Inggris dan Prancis, serta masyarakat multikultural yang sangat beragam. Ottawa, ibu kotanya, menawarkan Parliament Hill yang megah dan Rideau Canal yang menjadi arena seluncur es terbesar di dunia saat musim dingin. Kanada dikenal dengan sistem pendidikan dan kesehatan yang baik, serta kota-kota yang ramah seperti Vancouver, Toronto, dan Montreal. Negara ini juga memiliki satwa liar yang khas seperti beruang kutub, moose, dan berang-berang.'
    }
  ];
}