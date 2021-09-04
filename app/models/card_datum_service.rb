#Purpose: The purpose of the class is to apply card data services
class CardDatumService

  #initialize object and take card object
  def initialize(card_params)
        @payment=CardDatum.new(card_params)
        @validCard=false
        @issue=""
        @help_message=""
     end

  #Purpose: The purpose of the method is to mask the provided card number of the card data.
  def maskCard
    begin
      maskedCard=''
      lenOfCard=@payment.cardNumber.length-5

      #if length of cardNumber is less than or equal to 4 then return true
      if @payment.cardNumber.length<=4
        return true
      end

      for i in 0..lenOfCard
        maskedCard=maskedCard+'*'
      end
      maskedCard=maskedCard+@payment.cardNumber[@payment.cardNumber.length-4,@payment.cardNumber.length]
      @payment.cardNumber=maskedCard
      return true
    rescue
      return false
    end
  end

  #Purpose: The purpose of the method is to check card number for verification
  #if card number is wrong then set @validCard to false and set issue 'Card declined'
  #else if card number is right then set @validCard to true
  #else set @validCard to false and set issue of 'Something went wrong. We are sorry for the inconvenience'
  def cardChecker
    if @payment.cardNumber=="5560000000000001"
      @validCard=false
      @issue="Card declined"
      @help_message="Please check with your bank the status of your card"
    elsif @payment.cardNumber=="5520000000000000"
      @validCard=true
      @issue=""
      @help_message="Thank you for using our service"
    else
      @validCard=false
      @issue="Something went wrong. We are sorry for the inconvenience"
      @help_message="Please contact us at mr.syedkazimraza@gmail.com to help you resolve the issue"
    end
  end

  #Purpose:The purpose of the method is to save the card data in the database if card is valid
  def saveData
    begin
      cardChecker
      if @validCard==true
        #mask card number before storing data into database
        cardMasked=maskCard
        @payment.save
      end
    rescue
      @validCard=false
      @issue="Something went wrong. We are sorry for the inconvenience"
      @help_message="Please contact us at mr.syedkazimraza@gmail.com to help you resolve the issue"
    end
    return @validCard,@issue,@help_message
  end

  #Purpose:The purpose of the method is to validate the card data
  def validate
      @payment.valid?
      return @payment
  end
end
