User.create!([
  {email: "rich.baukovic@brickfish.com", encrypted_password: "$2a$10$1.RGVRT2sFhd1i9VeKIF0OJTaRZlnOrQNA1YKPU0rXcUmTY0YCL5S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2015-06-11 01:57:26", last_sign_in_at: "2015-06-10 22:59:54", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Image.create!([
  {image_url: "http://www.foodpeoplewant.com/wp-content/uploads/2009/09/Tacos-De-Cochinita-Pibil-1024x686.jpg", taco_id: "1"},
  {image_url: "http://35drsm2kcjyo1uhpn73720ja.wpengine.netdna-cdn.com/wp-content/uploads/2011/04/Heirloom-LA-Cochinita-Pibil-Tacos-Dressed.jpg", taco_id: "1"},
  {image_url: "http://www.seriouseats.com/images/2012/05/20120501-204377-tacos-al-pastor-small.jpg", taco_id: "2"},
  {image_url: "http://cdn2.norecipes.com/wp-content/uploads/2008/05/al_pastor-2-620x414.jpg?fcc9a4", taco_id: "2"},
  {image_url: "http://chicago.seriouseats.com/images/2012/10/20121004-224862-chicago-tacos-2-amigos-carne-asada.jpg", taco_id: "3"},
  {image_url: "http://www.blogto.com/listings/restaurants/upload/2013/03/20130307-590-asador-crispyfishtaco.jpg", taco_id: "3"},
  {image_url: "http://articles.wordpress.elclasificado.com/wp-content/uploads/sites/4/2012/05/tacos_de_pescado.jpg", taco_id: "4"},
  {image_url: "http://i.ytimg.com/vi/gN8IVq7Phn4/maxresdefault.jpg", taco_id: "4"},
  {image_url: "http://lh6.ggpht.com/YVO1JtXj1fIKHeL3Olp-tnYEOoD62k_VDs5QwjFiKDTkzUNfV8VDbKNlD4ggSJi7M9ijJf6BpDYWl1W3dWX1OA=s730-e365", taco_id: "17"},
  {image_url: "http://s3.amazonaws.com/tastyfix/recipe/52dde5c4e4b06516562cd371-20101207-tongue-tacos-de-lengua-primary.jpeg", taco_id: "17"},
  {image_url: "http://beyondwonderful.com/wp-content/uploads/2011/06/tacos_dorado_700x469.jpg", taco_id: "18"},
  {image_url: "http://www.dineoncampus.com/tools/contentImages/image/Tacos.jpg", taco_id: "18"},
  {image_url: "https://s-media-cache-ak0.pinimg.com/736x/51/6f/2b/516f2b6d8360dc10f067ce4f12eb28a1.jpg", taco_id: "19"},
  {image_url: "http://www.noticiaspv.com/wp-content/uploads/2013/09/noticiaspvNoticiasPuertoVallarta-noticiaspvnoticiaspuertovallarta-tacossuadero01.jpg", taco_id: "19"},
  {image_url: "http://stream1.gifsoup.com/view7/4201326/exploding-taco-in-slow-motion-o.gif", taco_id: "20"},
  {image_url: "http://www.seriouseats.com/images/2012/05/20120501-204377-tacos-al-pastor-small.jpg", taco_id: "2"},
  {image_url: "http://cdn2.norecipes.com/wp-content/uploads/2008/05/al_pastor-2-620x414.jpg?fcc9a4", taco_id: "2"},
  {image_url: "http://www.seriouseats.com/images/2012/05/20120501-204377-tacos-al-pastor-small.jpg", taco_id: "2"},
  {image_url: "http://cdn2.norecipes.com/wp-content/uploads/2008/05/al_pastor-2-620x414.jpg?fcc9a4", taco_id: "2"},
  {image_url: "http://www.foodpeoplewant.com/wp-content/uploads/2009/09/Tacos-De-Cochinita-Pibil-1024x686.jpg", taco_id: "1"},
  {image_url: "http://35drsm2kcjyo1uhpn73720ja.wpengine.netdna-cdn.com/wp-content/uploads/2011/04/Heirloom-LA-Cochinita-Pibil-Tacos-Dressed.jpg", taco_id: "1"}
])
Order.create!([
  {quantity: 4, taco_id: nil, user_id: nil, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 4, taco_id: nil, user_id: nil, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 5, taco_id: nil, user_id: nil, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 5, taco_id: nil, user_id: nil, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 2, taco_id: nil, user_id: nil, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 2, taco_id: nil, user_id: nil, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 3, taco_id: nil, user_id: 1, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 7, taco_id: nil, user_id: 1, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 5, taco_id: nil, user_id: 1, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 65, taco_id: nil, user_id: 1, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 3, taco_id: nil, user_id: 1, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 2, taco_id: nil, user_id: 1, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 3, taco_id: 1, user_id: 1, tax: nil, 2: nil, subtotal: nil, 4: nil, total_price: nil, 8: nil},
  {quantity: 3, taco_id: 2, user_id: 1, tax: "0.0", 2: nil, subtotal: 9, 4: nil, total_price: "9.0", 8: nil},
  {quantity: 3, taco_id: 4, user_id: 1, tax: "1.0", 2: nil, subtotal: 18, 4: nil, total_price: "19.0", 8: nil},
  {quantity: 5, taco_id: 1, user_id: 1, tax: "0.0", 2: nil, subtotal: 5, 4: nil, total_price: "5.0", 8: nil},
  {quantity: 3, taco_id: 1, user_id: 1, tax: "0.0", 2: nil, subtotal: 3, 4: nil, total_price: "3.0", 8: nil},
  {quantity: 3, taco_id: 2, user_id: 1, tax: "0.0", 2: nil, subtotal: 9, 4: nil, total_price: "9.0", 8: nil},
  {quantity: 3, taco_id: 3, user_id: 1, tax: "1.35", 2: nil, subtotal: 15, 4: nil, total_price: "16.35", 8: nil},
  {quantity: 3, taco_id: 3, user_id: 1, tax: "1.35", 2: nil, subtotal: 15, 4: nil, total_price: "16.35", 8: nil},
  {quantity: 3, taco_id: 3, user_id: 1, tax: "1.35", 2: nil, subtotal: 15, 4: nil, total_price: "16.35", 8: nil},
  {quantity: 3, taco_id: nil, user_id: 1, tax: "0.81", 2: nil, subtotal: 9, 4: nil, total_price: "9.81", 8: nil},
  {quantity: 75, taco_id: nil, user_id: 1, tax: "33.75", 2: nil, subtotal: 375, 4: nil, total_price: "408.75", 8: nil},
  {quantity: 3, taco_id: nil, user_id: 1, tax: "0.27", 2: nil, subtotal: 3, 4: nil, total_price: "3.27", 8: nil},
  {quantity: 22, taco_id: 2, user_id: 1, tax: "5.94", 2: nil, subtotal: 66, 4: nil, total_price: "71.94", 8: nil},
  {quantity: 3, taco_id: 1, user_id: 1, tax: "0.27", 2: nil, subtotal: 3, 4: nil, total_price: "3.27", 8: nil}
])
Supplier.create!([
  {name: "Big Star", email: "info@bigstar.com", phone: "555-555-1234"},
  {name: "Authentaco", email: "info@authentaco.com", phone: "555-555-1235"},
  {name: "Taco Joint", email: "info@tacojoint.com", phone: "555-555-1357"}
])
Taco.create!([
  {name: "Cochinita Pibil", price: "1.0", description: "Mouthwatering, slow-cooked pork on a corn tortilla, served with queso fresco, pickled onions y cilantro!", rating: "5", supplier_id: 1},
  {name: "Al Pastor", price: "3.0", description: "Succulent, smoky, earthy, spiced and grilled pork strips seasoned with adobo seasoning. Served on a corn tortilla with cilantro y cebollas", rating: "4", supplier_id: 2},
  {name: "Tacos de Asador", price: "5.0", description: "Skirt steak seasoned and grilled until crisp, served in a corn tortilla with cilantro y cebollas. Spicy habanero or medium chile salsa upon request. #awesome", rating: "5", supplier_id: 3},
  {name: "Tacos de pescado", price: "6.0", description: "Fresh Mahi Mahi battered and flash-fried, served on a corn tortilla and garnished with slaw, crema and a side of avocado, lime and pico de gallo.", rating: "5", supplier_id: 2},
  {name: "Taco de Lengua", price: "5.0", description: "Cooked in in water with onions, garlic, and bay leaves, for several hours until tender and soft, then sliced and browned through saute in a small amount of oil.", rating: "5", supplier_id: 1},
  {name: "Tacos dorados", price: "6.0", description: "tortillas are filled with pre-cooked shredded chicken, beef or barbacoa, rolled into an elongated cylinder and deep-fried until crisp", rating: "5", supplier_id: 1},
  {name: "Tacos de Suadero", price: "4.0", description: "Deep-fried tender cuts of beef served on a corn tortilla.", rating: "5", supplier_id: 1},
  {name: "Exploding Taco", price: "5.0", description: "BOOM!", rating: "5", supplier_id: 2}
])
