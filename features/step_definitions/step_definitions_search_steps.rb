#scenario 1

When(/^I visit the Dominos home page$/) do
  visit('https://order.dominos.com/en/')
end
 
Then(/^I should see the Dominos home page$/) do
 expect(page).to have_selector(:id, 'homePage')
end

When(/^I click the "(.*?)" tab$/) do |tab|
  click_link('Order Online')
  sleep 10
end
 
Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
  sleep 10
end

#scenario 2 
#Given(/^I am on Location search page$/) do
#expect(page).to have_selector(:id, 'locationsSearchPage')
#end
And (/^I select "carryout" option$/) do
	find('.Carryout').click
	sleep 5
end

And(/^I fill out Address Information form$/) do
select('House', from: 'Address_Type_Select')
fill_in('Street', with: '43040 Tavernsprings ct')
fill_in('City', with: 'Ashburn')
fill_in('Postal_Code', with: '20147')
select('VA', from: 'Region')
end

When(/^I click on continue button$/) do
	find(:xpath,'/html/body/div[2]/div[1]/div/div/form/div/div[2]/button').click
	sleep 5
end

Then(/^I should see location Results page$/) do
	expect(page).to have_selector(:id, 'locationsResultsPage')
end
When(/^I click on order-carryout-pickup button$/) do
	page.all(:link, "Order Carryout / Pickup") [0].click
end

Then (/^I should be on Entrees page$/) do
	expect(page).to have_selector(:id, 'js-mainSiteNavigation')
end
And(/^I should see "build your own Pizza" option$/) do 
  expect(page).to have_selector(:id, 'entree-BuildYourOwn')
end
When(/^I click on build your pizza option$/) do
	find(:css, '.media__title').click
end
Then(/^I should see Pizza builder page$/) do
	expect(page).to have_selector(:id, 'pizzaBuilderPage')
end

