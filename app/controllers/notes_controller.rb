class NotesController < ApplicationController
  def index
    person = Person.find(params[:person_id])
    @notes = person.notes.all
  end

  private
    def note_params
      params.require(:note).permit(:body, :person_id)
    end
end
