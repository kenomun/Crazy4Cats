class CommentsReactionsController < ApplicationController
    before_action :authenticate_user!
    
      def user_reaction_comment
          @user = current_user
          @comment = Comment.find(params[:comment_id])
          @comment_reaction = CommentReaction.find_by(user_id: @user.id, comment_id: @comment.id)
      
          if @comment_reaction
              if @comment_reaction.kind == params[:kind]
                  # Si el usuario ya reaccionó de la misma manera, elimina la reacción actual
                  @comment_reaction.destroy
                  @comment_reaction = nil
              else
                  # Si el usuario cambia su reacción, actualiza la reacción existente
                  @comment_reaction.update(kind: params[:kind])
              end
          else
              # Si el usuario no tiene una reacción previa, crea una nueva
              @comment_reaction = CommentReaction.create(user_id: @user.id, comment_id: @comment.id, kind: params[:kind])
          end
          
          # redirecciona a la misma vista show de la publicación
          respond_to do |format|
              format.html { redirect_to post_path(@comment) }
          end
      end
  end