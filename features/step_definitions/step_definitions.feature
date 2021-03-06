Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training

@gotohomepage
Scenario: Check the Dominos home page
  When I visit the Dominos home page
  Then I should see the Dominos home page

@location
Scenario: Location Search for Dominos Pizza
  Given I visit the Dominos home page
  When I click the "Order Online" tab
  Then I should see the Dominos Location Search page
  And I select "carryout" option
  And I fill out Address Information form
  When I click on continue button
  Then I should see location Results page
  When I click on order-carryout-pickup button
  Then I should be on Entrees page
  And I should see "build your own Pizza" option
  When I click on build your pizza option
  Then I should see Pizza builder page


