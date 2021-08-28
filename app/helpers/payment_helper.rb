module PaymentHelper

  def PaymentHelper.maskCard(cardNumber)
    maskedCard=''

    #if cardNumber is empty or null then return ''
    if cardNumber=='' || cardNumber.nil?
      return ''
    end

    lenOfCard=cardNumber.length-5

    #if length of cardNumber is less than or equal to 4 then return cardNumber
    if cardNumber.length<=4
      return cardNumber
    end

    for i in 0..lenOfCard
      maskedCard=maskedCard+'*'
    end
    maskedCard=maskedCard+cardNumber[cardNumber.length-4,cardNumber.length]
    return maskedCard
  end


  #if card number is wrong then set @validCard to false and set message 'Card declined'
  #else if card number is right then set @validCard to true
  #else set @validCard to false and set message of 'Card service not supported'
  def PaymentHelper.cardValidator(cardNumber)
    if cardNumber=='' || cardNumber.nil?
      return false,"specify a card number"
    end

    if cardNumber=="5560000000000001"
      return false,"Card declined"
    elsif cardNumber=="5520000000000000"
      return true,""
    else
      return false,"Card service not supported"
    end
  end
end
