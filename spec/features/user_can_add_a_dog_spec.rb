require 'spec_helper'

describe 'User can add a dog to the inventory' do
  it 'by adding its name, email, age, telephone number, password, and date of birth' do
    visit '/'
    click_on 'Add a Dog'

    fill_in 'Name', with: 'Harleigh'
    fill_in 'Email', with: 'harleigh@example.com'
    fill_in 'Age', with: 5
    fill_in 'Number', with: '505-222-2222'
    fill_in 'Password', with: 'password123'
    fill_in 'Date of birth', with: '7/1/2009'
    check 'Adopted'
    select 'Cattle Dog', from: 'Breed'

    click_on 'Create Dog'

    expect(page).to have_content('Harleigh')
  end
end