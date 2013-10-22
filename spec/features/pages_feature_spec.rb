
require 'spec_helper'

describe 'Static pages' do
    describe 'Home Page' do
     it "should have the content 'Welcome to my app!'" do
      visit '/'
      expect(page).to have_content('Welcome to my app!')
      end
     end   
  
    describe 'About page' do
      it "should have the content 'About us'" do
       visit '/about'
      expect(page).to have_content('About Us')
      end 
    end
end


#   before(:all) do
#     create_quiz 'Some quiz'
#   end

#   describe '/quizzes' do
#     it 'should display quizzes' do
#       visit '/quizzes'

#       expect(page).to have_content 'Some quiz'
#     end
#   end

  # describe '/pages/:id' do
  #   it 'has its own page' do
  #     visit '/pages'
  #     click_link 'Some Jewellery'

  #     expect(page).to have_css 'h1', text: 'Some Jewellery'
  #   end
  # end

#   describe '/quizzes/new' do
    
#     it 'creates a new quiz' do
#       visit '/quizzes/new'

#       within '.new_quiz' do
#         fill_in 'Title', with: 'Brand new quiz'
#         click_button "Create Quiz"
#       end

#       expect(current_url).to eq url_for(Quiz.last)
#       expect(page).to have_content 'Brand new quiz'
#     end

#     it 'can also create a new question' do
#       visit '/quizzes/new'

#       fill_in 'Title', with: 'Quiz title'
#       fill_in 'Question', with: 'What is your name?'
#       click_button 'Create Quiz'

#       expect(page).to have_content 'What is your name?'
#       expect(Quiz.last.questions).not_to be_empty
#     end

#     it 'should not accept a new quiz without a title' do
#       visit '/quizzes/new'
#       click_button 'Create Quiz'

#       expect(page).to have_content 'error'
#     end

#   end
