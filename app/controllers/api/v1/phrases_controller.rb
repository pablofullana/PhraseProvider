class Api::V1::PhrasesController < ApplicationController
  before_action :set_phrase, only: :show
  
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phrase
      @phrase = Phrase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phrase_params
      params.require(:phrase).permit(:content, :author, :language)
    end
end
