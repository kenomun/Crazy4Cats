

# # Crear usuarios
# admin_user = User.create(
#   name: 'Admin User',
#   email: 'admin@example.com',
#   password: '123456',
#   password_confirmation: '123456',
#   role: 'admin'
# )
# admin_user.profile_image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'image_admin.jpg')), filename: 'image_admin.jpg')
# puts 'Usuario administrador creado'
# puts 'admin@example.com'
# puts 'contraseña: 123456'
# puts '****************'

# user1 = User.create(
#   name: 'User 1',
#   email: 'user1@example.com',
#   password: '123456',
#   password_confirmation: '123456',
#   role: 'user'
# )
# user1.profile_image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'image_user1.jpg')), filename: 'image_user1.jpg')
# puts 'Usuario1'
# puts 'user1@example.com'
# puts 'contraseña: 123456'
# puts '****************'

# user2 = User.create(
#   name: 'User 2',
#   email: 'user2@example.com',
#   password: '123456',
#   password_confirmation: '123456',
#   role: 'user'
# )
# user2.profile_image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'image_user2.jpg')), filename: 'image_user2.jpg')
# puts 'Usuario creado'
# puts 'user2@example.com'
# puts 'contraseña: 123456'
# puts '****************'

# # Crear publicaciones con imágenes
# post1 = Post.create(
#   title: 'Publicación 1',
#   content: 'Contenido de la Publicación 1',
#   user_id: admin_user.id
# )
# post1.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'post1.jpg')), filename: 'post1.jpg')

# post2 = Post.create(
#   title: 'Publicación 2',
#   content: 'Contenido de la Publicación 2',
#   user_id: user1.id
# )
# post2.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'post2.jpg')), filename: 'post2.jpg')

# post3 = Post.create(
#   title: 'Publicación 3',
#   content: 'Contenido de la Publicación 3',
#   user_id: user2.id
# )
# post3.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'post3.jpg')), filename: 'post3.jpg')


# # Crear comentarios para primer post
# comment1 = Comment.create(
#   content: 'Comentario de Admin User en Publicación 2',
#   user_id: admin_user.id,
#   post_id: post1.id
# )

# comment2 = Comment.create(
#   content: 'Comentario de User 1 en Publicación 1',
#   user_id: user1.id,
#   post_id: post1.id
# )

# comment3 = Comment.create(
#   content: 'Comentario anónimo en Publicación 3',
#   post_id: post1.id
# )
# # Crear comentarios para segundo post
# comment4 = Comment.create(
#   content: 'Comentario de Admin User en Publicación 2',
#   user_id: admin_user.id,
#   post_id: post2.id
# )

# comment5 = Comment.create(
#   content: 'Comentario de User 1 en Publicación 1',
#   user_id: user1.id,
#   post_id: post2.id
# )

# comment6 = Comment.create(
#   content: 'Comentario anónimo en Publicación 3',
#   post_id: post2.id
# )
# # Crear comentarios para tercer post
# comment7 = Comment.create(
#   content: 'Comentario de Admin User en Publicación 2',
#   user_id: user2.id,
#   post_id: post3.id
# )

# comment8 = Comment.create(
#   content: 'Comentario de User 1 en Publicación 1',
#   user_id: user1.id,
#   post_id: post3.id
# )

# comment9 = Comment.create(
#   content: 'Comentario anónimo en Publicación 3',
#   post_id: post3.id
# )

# # Crear reacciones a los post
# PostReaction.create(
#   user_id: admin_user.id,
#   post_id: post2.id,
#   kind: ['like', 'dislike'].sample
# )


# PostReaction.create(
#   user_id: user1.id,
#   post_id: post1.id,
#   kind: ['like', 'dislike'].sample
# )

# PostReaction.create(
#   user_id: user2.id,
#   post_id: post3.id,
#   kind: ['like', 'dislike'].sample
# )

# # Crear reacciones a algunos comentarios
# CommentReaction.create(
#   user_id: admin_user.id,
#   comment_id: comment1.id,
#   kind: ['like', 'dislike'].sample
# )
# CommentReaction.create(
#   user_id: user1.id,
#   comment_id: comment2.id,
#   kind: ['like', 'dislike'].sample
# )

# CommentReaction.create(
#   user_id: user2.id,
#   comment_id: comment3.id,
#   kind: ['like', 'dislike'].sample
# )

# CommentReaction.create(
#   user_id: admin_user.id,
#   comment_id: comment4.id,
#   kind: ['like', 'dislike'].sample
# )
# CommentReaction.create(
#   user_id: user1.id,
#   comment_id: comment5.id,
#   kind: ['like', 'dislike'].sample
# )

# CommentReaction.create(
#   user_id: user2.id,
#   comment_id: comment6.id,
#   kind: ['like', 'dislike'].sample
# )

# CommentReaction.create(
#   user_id: admin_user.id,
#   comment_id: comment7.id,
#   kind: ['like', 'dislike'].sample
# )
# CommentReaction.create(
#   user_id: user1.id,
#   comment_id: comment8.id,
#   kind: ['like', 'dislike'].sample
# )

# CommentReaction.create(
#   user_id: user2.id,
#   comment_id: comment9.id,
#   kind: ['like', 'dislike'].sample
# )

# puts 'usuarios, publicaciones, comentarios y reeacciones creadas'
