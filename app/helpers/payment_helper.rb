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
end
