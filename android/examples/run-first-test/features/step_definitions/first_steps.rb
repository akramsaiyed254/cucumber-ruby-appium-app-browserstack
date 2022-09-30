Given(/^the user can see a list of stories/) do
	screen.list_of_stories_displayed?.should == true
end

When(/^I click on a Accept/) do
driver.find_element(xpath: "//android.widget.TextView[@text='Accept']").click
end

Then(/^I should be able to see contents of story/) do
	screen.list_of_story_contents?.should == true
end
