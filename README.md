# README

Process for code challenge : 

Assumptions: 

A user should be able to sign up/ sign in 
Ability to manage one’s account 
Start clock and stop clock in the app. Save after stop
Be able to view all their entries such edit(maybe)


Solution formulation: 

First set up application with a postgreSQL interface. Implemented a bootstrap theme that provides an admin style to the app. Added important gems. 

Step 1: user authentication

Started working on an authentication system using Devise. Devise provides the system to handle authentication sessions and cookies. Additionally, it includes middleware, Controllers, and Views by default. 

Step 2: manage account

After adding signing up  and access to the application, I added an interface to be able to view / manage other users.  

Step 3: logic on clocking in and out and saving as timesheet 

I ran out of time, as I added a stopwatch. That could have been extended to be saved on the timesheet. 


Schema design chosen, why? Alternatives considered 

I started with a simple schema, that has a User and timezone
I did not get time to think about better alternatives, I spent way too much time on authentication. 


Given a day to work more on it, or a month 

Given a day, I would make sure my deploy on heroku works -- assets were failing when compiling. Also, I would finish the timesheet part of clocking in/out and saving to timesheets. 

A month -- extend with more models and logic -- such as teams and tasks. 
Add background jobs to better coordinate tasks/timesheets for seamless integration. 
