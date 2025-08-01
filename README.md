# Linq Take Home Test — Sales Engineer
Hello!

Thanks again for giving me the opportunity to test for this role.

Here, I'll mostly detail the reqs and directions for getting this app running on your machine. I'll save my breakdown for the video and Integration Notes file. 

## Getting Started

### Requirements
- At least Rails 8.0.2 
- At least PostgreSQL 14.12
- At least Bundler 2.5.14
- At least Ruby 3.4.4 (I manage Ruby versions with rbenv. If you don't see 3.4.4 in your list of possible versions using rbenv install --list-all, you may need to update your installer.
- (Optional) I built this app with WSL2. If you'd like to run it on your local machine: Here's a guide. I ran Ubuntu 22.04 in the WSL2 shell.

### Installation
1. Use Git to clone the app into your chosen directory
`https://github.com/brvarner/linq-se-tht.git`

2. Navigate to the app directory in your terminal 
`cd linq-se-tht`

3. Install the project's gems with the bundle command in your terminal
`bundle`

4. Create the tables and run the necessary migrations
`rails db:create db:migrate`

5. Start the rails server 
`rails s`

6. Load up Postman or the API platform of your choice to start testing!
    - The base URL for everything is `http://localhost:3000` (e.g. the post request to add a contact goes to: `http://localhost:3000/contacts`)

### Requests
If you want to test requests to the endpoints, here are your options:

```bash
    GET "/contacts": returns a list of all contacts, or no content if no contacts currently exist

    POST "/contacts": adds a contact to the PostgreSQL database with three fields I assumed we needed: first_name, last_name, and email_address

    POST "/auth/login": returns a JWT which encodes basically nothing but a random string. Real JWT auth would be beyond the scope of this project. It saves a JWT token in the user session so that it persists between calls

    GET "/auth/login/user": returns the JWT token, or if one doesn't exist, creates the same persistent token they would've gotten with the post action
```

#### POST "/contacts"
The contacts endpoint expects an object like this:

```bash
{ 
    "contact": {
        "acme_first_name": "Test",
        "acme_last_name": "Testo",
        "acme_email_address": "test@test.com"
    }
}
```

As the instructions for this exercise stated, all fields come with "acme_" attached as a prefix.

Anything other than a request formatted this way will not work. There are some ways to fix bad requests but that's beyond the scope of this project.

#### POST "/auth/login"
This endpoint accepts basically anything because it's only returning a token, but the User model would only accept an email and a password, which would then be hashed and salted.