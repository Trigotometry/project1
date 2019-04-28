### **A Basic Forum.**

#### General Assembly — SEI-31

The task was to build an app using Ruby on Rails in conjunction with the rest of the technologies we've learned over the first 6 weeks of the SEI course, *Ruby on Rails*, *JavaScript*, *jQuery*, *HTML*, *CSS* and *Bootstrap* for my front end framework. An open brief gave me the opportunity to deliver whatever I wanted ... I chose to try and build a very basic forum system within the week.

This was immensely difficult but a fantastically rewarding process (even though I didn't manage to deliver all my initial ideas). This was the first project where I went from ideation to delivery. Going into the project I found that I had an okay foundation with the with the CRUD systems of the backend.

#### **Learnings**
This was a deep dive into the manipulating several interconnected CRUD systems all at the same time, it really helped grow my understanding of the pathing system within Rails. I discovered the huge benefit of nested resources. Before this project I didn't know that the CRUD system allows you to manipulate database elements outside of the URL seen in the address bar, for e.g. complete an Update action on a Show view, (as long as you're pointing the secondary CRUD action to the correct URL). This came to life in my project and would benefit a user because I've set it up so a user can run the edit action on their own post's when on the show page for Posts, rather than directing to a separate page and redirecting back to the original thread. Another example allowed me to implement my first AJAX element (an admin assigning check box on the "all users" view) and also set it up so users could edit their responses without leaving the page of the post the user was responding to.

Of course, any web app needs a database and this project was my first attempt at database design and setup. It really helped and pushed my understanding of associations, also what/how migrations are/work & where seed data comes into play.

I learned how to deploy a project to Heroku, backup (dump) it's PostgreSQL database and restore it my local server.

I know I need to work on user login and server side sessions.

#### **Show Me Already**
You can find my functioning *basic forum* here;
https://hexton-project-1.herokuapp.com/

![Trigotometry's Basic Forum Homepage](https://raw.githubusercontent.com/Trigotometry/project1/master/a%20basic%20forum.png)

#### **Potential Updates & Additions.**
- Profile pictures.
- Usernames, in addition to emails.
- Updating password.
- Rich text in forums.
- Deleting topics. Must setup controller to also remove any associations i.e. any ***Response*** with the parent equal to the id of the deleted ***Post***.
- Page to view all of a users' content.
- Colour scheme choice for users.
- Breadcrumbs to simplify forum navigation.

**Thank you to both Joel and Yianni for fielding questions.**
