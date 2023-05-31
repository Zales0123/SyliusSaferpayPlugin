@managing_payment_methods
Feature: Configuring available payment methods for Saferpay gateway
    In order to allow the customer to pay only by specific payment methods using Saferpay gateway
    As an Administrator
    I want to be able to configure available payment methods for Saferpay gateway

    Background:
        Given the store operates on a single channel in "United States"
        And the store allows paying with Saferpay
        And I am logged in as an administrator

    @ui
    Scenario: All payment methods are available by default for Saferpay gateway
        When I want to configure the available payment methods for Saferpay gateway
        Then I should see that all payment methods are available

    @ui
    Scenario: Configuring available payment methods for Saferpay gateway
        When I want to configure the available payment methods for Saferpay gateway
        And I disable the "Visa" and "Mastercard" payment methods
        And I save the configuration
        Then I should be notified that it has been successfully edited
        And the "Visa" and "Mastercard" payment methods should be unavailable
