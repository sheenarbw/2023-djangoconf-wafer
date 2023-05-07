# Dearest conference organizers  

This is a Django app that makes use of wafer. Wafer can do quite a lot of nice things, but we are just using it to manage our CFP process.

If you are a conference organizer and you need access to the administration panel (eg so that you can view and review talks) then please do the following:

1. Make an account on the website
2. Send your email address to sheena on our organisers slack

## Reviewing talks 

All talks can be seen in the admin panel under: admin/talks/talk/

When you visit that page you will see a bunch of talks with different statuses. Start of by looking for talks with the status "submitted". 

"Submitted" is the default status for new talks. If a talk has this status then it means the review process has not started yet. 

When you start reviewing a submitted talk then change its status to "under consideration".

If there are no talks with status "submitted" but there are some with status "under consideration" then you are welcome to add reviews to those as well. More eyes are better :) 

### Adding a review 

Currently, the easiest way to add a review is to visit the reviews page at /admin/talks/review/. Choose to add a review and then select the talk you are reviewing.

When reviewing a talk then you can give scores for a number of aspects. Please give every aspect a score that is in the range of -2 to 2. 

### Accepting a talk 

If 2 or more talk reviewers think that the talk is a good fit then the status can be changed to "provisionally accepted". 

If even one talk reviewer thinks the talk is not acceptable then concerns must be addressed before the talk is "provisionally accepted". This is not a vote, all major concerns should be fully addressed.

A talk can be moved to "accepted" once we have confirmed that the speaker will be attending the conference and that we can make the schedule work for them.

### Communicating with speakers 

Always be kind and try to set people up for success. If you are reviewing a talk and it looks like it needs a bit of polish then give the speaker actionable feedback. If a talk looks inappropriate then tell the speaker why. 

Also remember to communicate with the other talk reviewers, if multiple reviewers are sending conflicting advice to the speaker then that wont be a good experience.

If a talk is provisionally accepted or rejected then it's important to let the speaker know. 