class PostsReactionsController < ApplicationController
  before_action :authenticate_user!
  
	def user_reaction_post
		@user = current_user
		@post = Post.find(params[:post_id])
		@post_reaction = PostReaction.find_by(user_id: @user.id, post_id: @post.id)
	
		if @post_reaction
			if @post_reaction.kind == params[:kind]
				# Si el usuario ya reaccionó de la misma manera, elimina la reacción actual
				@post_reaction.destroy
				@post_reaction = nil
			else
				# Si el usuario cambia su reacción, actualiza la reacción existente
				@post_reaction.update(kind: params[:kind])
			end
		else
			# Si el usuario no tiene una reacción previa, crea una nueva
			@post_reaction = PostReaction.create(user_id: @user.id, post_id: @post.id, kind: params[:kind])
		end
		
		# redirecciona a la misma vista show de la publicación
		respond_to do |format|
			format.html { redirect_to post_path(@post) }
		end
	end
end
  
