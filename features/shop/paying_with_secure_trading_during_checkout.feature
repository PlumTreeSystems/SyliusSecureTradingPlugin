@paying_with_secure_trading_during_checkout
  Feature: Paying with Secure Trading during checkout
    In order to buy products
    As a Customer
    I want to be able to pay with Secure Trading

  Background:
    Given the store operates on a single channel in "United States"
    And there is a user "john@example.com" identified by "password123"
    And the store has a payment method "Secure Trading" with a code "secure_trading" and Secure Trading payment gateway
    And the store has a product "PHP T-Shirt" priced at "€19.99"
    And the store ships everywhere for free
    And I am logged in as "john@example.com"

  @ui @mink:chrome
  Scenario: Successful payment
    Given I added product "PHP T-Shirt" to the cart
    And I have proceeded selecting "Secure Trading" payment method
    When I confirm my order with Secure Trading payment
    And I wait for confirmation
    Then I should be notified that my payment has been completed