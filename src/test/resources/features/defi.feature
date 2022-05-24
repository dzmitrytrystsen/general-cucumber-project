@RegressionTest @Defi
Feature: DeFi page

  Background:
    Given Open SmartValor app
    Given User is fully compliant
    Given User is early adopter

  @SmokeTest
  Scenario: Successful MKR/CHF Wallet swap
    Given Min "MKR" brokerage amount is requested
    Given User has enough CHF to buy min amount of "MKR"
    Given User is logged in
    When User goes to DeFi page
    And User selects "MKR" from 'I want to receive' list
    And User fills 'I want to receive' field with min Brokerage amount
    And User clicks 'SWAP' button
    And User confirms DeFi Payment Details modal
    Then "Buying successful" Buy header is displayed

  @SmokeTest
  Scenario: Successful MKR/ETH swap
    Given Min "MKR/ETH" trading amount is requested
    Given User has minimum "ETH" brokerage amount on his wallet
    Given User is logged in
    When User goes to DeFi page
    And User selects "MKR" from 'I want to receive' list
    And User selects "ETH" from 'I want to spend' list
    And User fills 'I want to receive' field with min Exchange amount
    And User clicks 'SWAP' button
    And User confirms order
    Then "Successful. The order will be processed" alert is shown

  Scenario: Successful SNX/CHF Wallet swap
    Given Min "SNX" brokerage amount is requested
    Given Sufficient "SNX/EUR" market quantity
    Given User has enough CHF to buy min amount of "SNX"
    Given User is logged in
    When User goes to DeFi page
    And User selects "SNX" from 'I want to receive' list
    And User fills 'I want to receive' field with min Brokerage amount
    And User clicks 'SWAP' button
    And User confirms DeFi Payment Details modal
    Then "Buying successful" Buy header is displayed

  Scenario: Successful SNX/ETH swap
    Given Min "SNX/ETH" trading amount is requested
    Given Sufficient "SNX/ETH" market quantity
    Given User has minimum "ETH" brokerage amount on his wallet
    Given User is logged in
    When User goes to DeFi page
    And User selects "SNX" from 'I want to receive' list
    And User selects "ETH" from 'I want to spend' list
    And User fills 'I want to receive' field with min Exchange amount
    And User clicks 'SWAP' button
    And User confirms order
    Then "Successful. The order will be processed" alert is shown


  Scenario: Successful CRV/CHF Wallet swap
    Given Min "CRV" brokerage amount is requested
    Given Sufficient "CRV/EUR" market quantity
    Given User has enough CHF to buy min amount of "CRV"
    Given User is logged in
    When User goes to DeFi page
    And User selects "CRV" from 'I want to receive' list
    And User fills 'I want to receive' field with min Brokerage amount
    And User clicks 'SWAP' button
    And User confirms DeFi Payment Details modal
    Then "Buying successful" Buy header is displayed

  Scenario: Successful CRV/ETH swap
    Given Min "CRV/ETH" trading amount is requested
    Given Sufficient "CRV/ETH" market quantity
    Given User has minimum "ETH" brokerage amount on his wallet
    Given User is logged in
    When User goes to DeFi page
    And User selects "CRV" from 'I want to receive' list
    And User selects "ETH" from 'I want to spend' list
    And User fills 'I want to receive' field with min Exchange amount
    And User clicks 'SWAP' button
    And User confirms order
    Then "Successful. The order will be processed" alert is shown

  @Yearn
  Scenario: Successful YEARN/CHF Wallet swap
    Given Min "YFI" brokerage amount is requested
    Given Sufficient "YFI/EUR" market quantity
    Given User has enough CHF to buy min amount of "YFI"
    Given User is logged in
    When User goes to DeFi page
    And User selects "YFI" from 'I want to receive' list
    And User fills 'I want to receive' field with min Brokerage amount
    And User clicks 'SWAP' button
    And User confirms DeFi Payment Details modal
    Then "Buying successful" Buy header is displayed

  @Yearn
  Scenario: Successful YEARN/ETH swap
    Given Min "YFI/ETH" trading amount is requested
    Given Sufficient "YFI/ETH" market quantity
    Given User has minimum "ETH" brokerage amount on his wallet
    Given User is logged in
    When User goes to DeFi page
    And User selects "YFI" from 'I want to receive' list
    And User selects "ETH" from 'I want to spend' list
    And User fills 'I want to receive' field with min Exchange amount
    And User clicks 'SWAP' button
    And User confirms order
    Then "Successful. The order will be processed" alert is shown