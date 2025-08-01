# Integration Notes
Hello!

As requested, this file includes a walkthrough of my thought process when building this API.

## Approach
I used Ruby on Rails to build this API quickly. It's my favorite backend framework, though I'm also familiar with Node.js and Java.

I spun this app up with the `rails` command and used the `--api` flag to keep it lighter by removing unnecessary JavaScript that I wasn't planning on using. 

I created a User model just for completion's sake, but it's currently non-functional. 

I also added a general `path` endpoint to the routes.rb file for more graceful error-handling for invalid routes.

In the contact controller, I made sure to block any params that weren't needed to make a new contact. This act protects our database from a few of the easier hacking methods.

If you need any other information on my process, don't hesitate to email me!

## Assumptions
I assumed a few things based on the instructions for this task:
- I assumed that the acme info coming from the contacts form would have each field prefixed with `acme_`, so the contacts controller strips that opening from the keys before saving anything to the database.
- I chose not to do an HTML front-end this time, but I do still have my old take home test frontend available if you'd like to see any basic HTML skills.
- I assumed we wanted to keep the endpoint as safe as possible, so I did end up permitting the params that make up contacts before they make it to the database.
- I assumed that the JWT tokens would persist for specific users, but without anything to go on for the User construction, I stuck with an email address and password.
- I kept the CRUD actions to only what was needed, so I didn't scaffold everything out, just generated models and controls seperately (This is an MC app without the V)

## What I'd Add
- The instructions mentioned the app should only accept mock authentication, but at the moment it excepts anything you throw at it, I'd like to play around with its params as well.
- I'd put in more standard API features like rate limiting, etc. with more time.
- I'd probably go back and rebuild this app without the `--api` flag during my initial rails setup, so that I could add a form that could handle the requests. I also had to manually add in the sessions middleware to make the JWT persist