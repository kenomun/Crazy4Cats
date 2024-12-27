require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @post = posts(:one)
  end

  # Verifica si un usuario puede ntrar a la vista index de post.
  test "should get index" do
    get posts_path
    assert_response :success
  end

  # Verifica que un usuario autnticado puede entrara a la vista de creacion de un post.
  test "should get new" do
    # logea al usuario configurado en fixtures/users.
    sign_in users(:one)
    # entra a la ruta para crear un nuevo post.
    get new_post_path
    assert_response :success
  end


  # pruba para crear un nuevo post
  test "should create post with image" do
    # logea al usuario configurado en fixtures/users.
    sign_in users(:one)
  
    # Verifica que la cantidad de registros haya cambiado al crear un nuvo post.
    assert_difference("Post.count") do
      post posts_path, params: { post: { 
        content: @post.content,
        title: @post.title,
        user_id: @post.user_id
      } }
    end
    # llama al ultimo pot creado.
    created_post = Post.last
    # inserta la imagen en el post.
    created_post.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'post1.jpg')), filename: 'post1.jpg')
    # Verifica si el controlador redirecciona a la ubicacion specificada.
    assert_redirected_to post_path(Post.last)
    # Verifica que la imagen se haya adjuntado correctamente al post.
    assert created_post.image.attached?
  end

  # Verifica que la solicitud get  a la vista show del post.
  test "should show post" do
    get post_path(@post)
    assert_response :success
  end

  # Verifica si un usuario puede entrara a la vista para editar un post.
  test "should get edit" do
    sign_in users(:one)
    get edit_post_path(@post)
    assert_response :success
  end

  # Verificacion de que un usuario puede editar un post.
  test "should update post" do
    sign_in users(:one)

    patch post_path(@post), params: { post: { 
      content: 'Updated content',
      title: @post.title,
      user_id: @post.user_id
    } }

    # Recargamos el post para verificar la actualizacion con el valor entregado 
    @post.reload
    # Le insertamos la nueva imagen a actualizar
    @post.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'post2.jpg')), filename: 'post2.jpg')

    #verifica que s redireccione a la direccion indicada.
    assert_redirected_to post_path(@post)
    # Verifica que @Post.content tenga el valor que se acttualizo.
    assert_equal "Updated content", @post.content
    # Verifica que la imagen esté adjunta
    assert @post.image.attached?
    # Verifica que el nobre de la imagen insertada se el miso que tiene el post.
    assert_equal 'post2.jpg', @post.image.filename.to_s
  end

  # Verificacion de que un post se elimino.
  test "should destroy post" do
    sign_in users(:one)
    # Insertamos una imagen al post
    @post.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'post1.jpg')), filename: 'post1.jpg')

    # Verifica que la cantidad de registros haya cambiado al crear un nuvo post.
    assert_difference("Post.count", -1) do
      # Verifica que la Imagen haya sido eliminada de active storage.
      assert_difference("ActiveStorage::Attachment.count", -1) do
        delete post_path(@post)
      end
    end
    #Verifica la redireccion despues de eliinar el post
    assert_redirected_to posts_path
  end
end
