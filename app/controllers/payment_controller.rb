require 'payment_helper.rb'

#Purpose: This is the payment controller which is used for taking card payment from the user.
class PaymentController < ApplicationController

  #index action
  def index
  end

  #Purpose: This action of the controller is to show the user new form for the card payment.
  def new
    @payment=CardDatum.new
  end


  #Purpose: This action of the controller is to accept the submitted form from the user and display response to the user after user submits the form.
  def create

    begin
      @error=false
      @issue=""

      #initialize CardDatumService
      cardService=CardDatumService.new(card_params)
      #validate card data
      @payment=cardService.validate
      if @payment.errors.size>0
        raise "invalid card data"
      end
      #save card data
      @validCard,@issue,@guide_message=cardService.saveData
    rescue
      @error=true
    end

    #if error is true then return the form template again with error message
    #else if validCard is false then return error template with error message
    #else return new templte which shows that payment was processed
    if @error==true
      render :new
    elsif @validCard==false
      render :cardNotAccepted
    else
      render :cardAccepted
    end

  end


  #Purpose: This private method is used for strong paramters.
  private
    def card_params
      params.require(:card_datum).permit(:description,:cardNumber,:email,:address)
    end
end
