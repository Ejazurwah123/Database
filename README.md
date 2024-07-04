# Database
Basic to Intermediate level MySql Scripts


# Problem Statement
You are asked to design an ERD and database relational schema for an application
named AI-BASH. AI-Bash is an advanced software platform designed to
revolutionize collaborative development and version control, inspired by GitHub. It
introduces cutting-edge features tailored specifically for AI, ML, DS, and CS
projects. This platform aims to streamline collaboration, enhance project
management, and facilitate seamless integrations.
AI-Bash manages SE, AI, DS, CS projects for downloads to users. Each project has
a unique project id (8 characters long), can be assigned one or more categories (the
categories are Algorithms, ML-Models ,Computing and DSA-Implementation), has
a status (D for Download or P for Push), and has a description (text of maximum
256 characters) and a belonging status (AI, DS, SE, CS). Some projects will be
dependent on other projects and we have to keep track of the dependency. Each
project is developed and owned by a single developer (who is our AI-Bash potential
subscriber), and uploaded to our application in one or more transactions. Our users
are identified by name (at most 20 characters), email (at most 20 characters),
Contact Number, Address, Degree, Graduation Year (because AI-Bash is only free
for undergrad students we will charge graduated ones), and a unique user id (8
characters long). They can be either guest users or subscribed users (subscribers for
short). If a user is a subscriber you have to record its graduation year and if the
graduation year is less than the current they will be categorized as free_subs and
else are categorized as paid_subs. The subscribers have passwords (at most 8
characters) and we keep the date of the subscription. They need the password to
access our AI-Bash to file bug reports or upload projects or update patches. A user
can download any project, the number of downloads per user per project is
recorded. The subscribers can file bug reports for any project. Every bug identified
has an id (a positive integer) and a description (text of at most 256 characters). The
bug id’s must be unique for all bugs concerning the same project. The date of filing
of a bug report is recorded. Each bug report deals with a single project and can
report a single bug. Each bug report is made by a single subscriber. Some of our
subscribers are developers. 



They develop the software projects and also software updates for their own projects. Each update for a project has an id (8 characters long), a name (at most 20 characters), a status (Push or Update), a description (text
of at most 256 characters), and is assigned a particular type (the types are alpha, beta and charlie). 
Each update for a project is created by a single developer, the one who originally created the project. 
Each update patch is uploaded to our AI-Bash in a transaction. 
Each transaction has an id (6 characters long) and a date when it took place. 
The transaction id’s must be unique for all transactions concerning the same project.

# Your Tasks:
This assignment has a huge weightage of 7.5 absolutes. Don’t rush to solution, think
of the problem critically and this problem can have multiple solutions so you should
choose the most optimal solution.
● Create an ERD diagram utilizing all the concepts you have learned in the
class. (Submit it as separate jpg/jpeg or incorporate it with in the report)
● You can only use MySQL Workbench for DDL. You have to create a
database, required tables and their concerned attributes. Your DDL will be the
implementation of your ERD.
● You have to fill valid dummy data in your database, keeping an eye on Data
validations, Keys Integrity and Relations.
● You have to write a report .pdf which should explain your thought process,
what problems you encountered and how you tackle those, and why you think
that your solution is the most optimal solution.