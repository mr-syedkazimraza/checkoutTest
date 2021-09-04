require "test_helper"

class CardDatumTest < ActiveSupport::TestCase

  test "valid card data" do
      cardData=card_data(:valid_card_data)
      assert  cardData.valid?
   end


  test "invalid without email" do
    cardData=card_data(:invalid_without_email)
    assert_not  cardData.valid?
    p cardData.errors,''
   end


  test "invalid without address" do
   cardData=card_data(:invalid_without_address)
   assert_not  cardData.valid?
   p cardData.errors,''
  end


  test "invalid without card number" do
    cardData=card_data(:invalid_without_card_number)
    assert_not  cardData.valid?
    p cardData.errors,''
   end


 test "card data length too short" do
     cardData=cardData=card_data(:card_data_length_too_short)
     assert_not  cardData.valid?
  end


  test "email address length too long" do
      cardData=cardData=cardData=card_data(:email_address_length_too_long)
      assert_not  cardData.valid?
   end


  test "address length too short" do
     cardData=cardData=cardData=cardData=card_data(:address_length_too_short)
     assert_not  cardData.valid?
  end


end
