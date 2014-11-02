Given 'there are some rounds' do
  Round.create!(name: 'round_1', description: 'round_1 description',
                arrows: 60, scoring: 10, indoor_outdoor: 'Indoor', order_id: 10, on_card: true, official: true)
  Round.create!(name: 'round_2', description: 'round_2 description',
                arrows: 36, scoring: 10, indoor_outdoor: 'Indoor', order_id: 11, on_card: false, official: false)
  Round.create!(name: 'round_3', description: 'round_3 description',
                arrows: 60, scoring: 5,  indoor_outdoor: 'Indoor', order_id: 12, on_card: true, official: true)
end

When 'I visit the rounds page' do
  visit '/rounds'
end

When 'I click on the new round button' do
  click_on 'New'
end

When "I click on the round name" do
  click_link 'round_1'
end

When "I visit the edit page for a round" do
  visit '/rounds'
  click_link 'round_1'
  click_link 'Edit'
end

When 'I complete the new round form' do
  fill_in('Name', with: "New Round")
  fill_in('Description', with: "The Description")
  fill_in('Arrows', with: "40")
  select('9, 7, 5, 3, 1', from: "Scoring")
  select('Yes', from: 'Official')
  click_on('Create Round')
end

When 'I update the round details' do
  fill_in('Description', with: "Updated Description")
  click_on 'Update'
end

Then 'I should see the rounds' do
  expect(page).to have_content('round_1')
  expect(page).to have_content('round_2 description')
  expect(page).to have_content('round_3')
end

Then 'I should see the new round' do
  expect(page.body).to have_content('New Round')
end

Then "I should see the show page for the round" do
  expect(page.body).to have_content('round_1 description')
end

Then 'I should see the updated round' do
  expect(page.body).to have_content('Updated Description')
end
