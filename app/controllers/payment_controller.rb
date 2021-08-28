require 'payment_helper.rb'

class PaymentController < ApplicationController
  def index
  end

  #Purpose: This method is used by payment controller method for accepting new card payments
  def new
    @error=false
    @message=""
    validCard=false
    cardNumber=params[:cardNumber]
    description=params[:description]
    email=params[:email]
    address=params[:address]

    begin
      #check if card number is missing then set message
      if cardNumber==''
          @message="Card number is missing."
      end

      #check if email is missing then set message
      if email==''
        @message+="Email address is missing."
      end

      #check if address is missing then set message
      if address==''
        @message+="Address is missing."
      end

      #check if any of the mandorty fields are missing then raise error
      if cardNumber=='' || email=='' || address==''
        raise ""
      end

      #if card number is not string then raise error and set message
      if cardNumber.match?(/\A\d+\z/) ==false
        @message+="Card number can not contain alphbetics.Please insert a valid card number."
        raise ""
      end

      #card validation
      validCard,@message=PaymentHelper.cardValidator(cardNumber)

      #only if the card is valid we will strore the data
      if validCard==true
        #now lets mask the @cardNumber
        maskedCard=PaymentHelper.maskCard(cardNumber)
        newCard=CardDatum.new(cardNumber:maskedCard,description:description,email:email,address:address)
        newCard.save
      end

    rescue
      @error=true
    end

    #if error is true then return the form template again with error message
    #else if validCard is false then return error template with error message
    #else return new templte which shows that payment was processed
    if @error==true
      render :index
    elsif validCard==false
      render :error
    else
      render :new
    end

  end
end
