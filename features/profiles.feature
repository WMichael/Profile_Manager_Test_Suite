Feature: Profiles

Scenario: I should be able to add a new profile
  Given I am logged in as a Trainee or Admin
  And have a profile set up
  When I am on the Sparta profile
  And I click on new profile
  And I enter a summary
  And I select a stream
  And I select a team
  And I enter a degree
  And I click on modules
  And I click save
  Then a profile should be created

Scenario: I should be able to check no degree
  Given I am logged in as a Trainee or Admin
  And have a profile set up
  When I am on the Sparta profile
  And I click on new profile
  And I enter a summary
  And I select a stream
  And I select a team
  And I click on no degree
  And I click save
  Then a profile should be created
  And it should say not applicable under university degree

Scenario: Deleting a profile
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click the delete button on a selected profile
  And I click the confirm button on the pop up
  Then I can no longer access the profile link
  And A confirmation message will appear

Scenario: Deleting a profile and aborting deletion
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click the delete button on a selected profile
  And I click the cancel button on the pop up
  Then I can still view the profile link on the profile page


Scenario: I should be shown an error message when I don't enter a summary
  Given I am logged in as a Trainee or Admin
  And have a profile set up
  When I am on the Sparta profile
  And I click on new profile
  And I don't enter a summary
  And I select a stream
  And I enter a degree
  And I click save
  Then an error should appear saying: Summary can't be blank

Scenario: I should be shown an error message when I don't enter a degree
  Given I am logged in as a Trainee or Admin
  And have a profile set up
  When I am on the Sparta profile
  And I click on new profile
  And I enter a summary
  And I select a stream
  And I don't enter a degree
  And I click save
  Then an error should appear saying: Degree can't be blank and Degree is too short (minimum is 5 characters)


Scenario: I should be able to edit a profile
  Given I am logged in as a Trainee or Admin
  And have a profile set up
  When I am on the Sparta profile
  And I click the edit button on a selected profile
  And I enter a summary
  And I select a stream
  And I enter a degree
  And I click save
  Then a profile should create an updated profile
  And not change the old profile

Scenario: Edit profile page to check word count remains the same
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click the edit button on a selected profile
  And I do not add more words to the description
  Then the word count for description should remain the same


Scenario: Edit profile page to check word count decreases
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click the edit button on a selected profile
  And I add more words to the description
  Then the word count for description should decrease

Scenario: Edit profile page to check word count increases
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click the edit button on a selected profile
  And I take some words out from the description
  Then the word count for description should increase

Scenario: I should be able to view as a pdf
  Given I am logged in as a Trainee or Admin
  And have a profile set up
  When I am on the Sparta profile
  And I click on pdf
  Then I should be taken to the pdf of the profile

Scenario: Status should be pending
  Given I am in a profile link
  And I select Pending radio button from the Status options
  And I press save
  Then the status of profile should appear as pending in the profiles page

Scenario: Status should be Draft
  Given I am in a profile link
  And I select Draft radio button from the Status options
  And I press save
  Then the status of profile should appear as Draft in the profiles page