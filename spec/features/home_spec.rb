require 'rails_helper'

feature 'home', type: :feature do
  let(:user) { create(:user) }

  scenario 'new home' do
    visit root_path
    expect(page).to have_no_content('投稿する')

    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    find('input[name="commit"]').click
    # click_on("Log in")
    expect(current_path).to eq root_path
    expect(page).to have_content('投稿する')

    expect {
      click_link('投稿する')
      expect(current_path).to eq new_home_path
      # fill_in 'image', with: 'https://s.eximg.jp/expub/feed/Papimami/2016/Papimami_83279/Papimami_83279_1.png'
      fill_in 'text', with: 'フィーチャースペックのテスト'
      find('input[type="submit"]').click
    }.to change(Home, :count).by(1)
  end
end