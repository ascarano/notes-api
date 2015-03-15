class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: {notes:@notes}
  end

  def create
    @note = Note.new(params.require(:note).permit(:body, :title))
    @note.save
    render json: {note:@note}
  end

  def show
    @note = Note.find(params[:id])
    render json: {note:@note}
  end

  def update
    @note = Note.find(params[:id])
    @note.update(params.require(:note).permit(:body, :title))
    render json: {note:@note}
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    render json: {note:@note}
  end


end
