# Database Management Assignment of _group B5_

# Contributors  
Carola Spinelli	    (student n. 500938948)
Martijn Jessurun	(student n.500747748)
Mees Lindhout	    (student n. 500772613)

Supervisor:  
Mert Yazan (Univeristy of Applied Sciences of Amsterdam)

# Project title
Which factors contributed to worldwide box office revenues of movies produced between 2000 and 2021?

# Project description 
The current project aims at identifying factors determining movies' box office performance. The provided initial data
consisted of 4 unstructured databases. On the basis of their content and of field literature, several research questions
and hypotheses were formulated. To answer these last ones, an ERD diagram was created with the website "draw.io". 
The databases were then cleaned, in light of the research scope, using Python. Starting from these structured files a 
newer database was created through a SQL script (see section Requirements for versions). The final database (see
representation below) was then filled with information about movies retrieved from the cleaned Python files.

## Project relevance
This project tries to test several hypotheses whose analysis could contribute to the research field, as it expands
on existing literature. The project also relies on a dataset of modern movies, whose analysis tests the generalizability
of previous findings. Both future researchers and movies' stakeholders can build on its conclusions. 

## Main research question and sub-research questions
__*Which factors contributed to worldwide box office revenues of movies produced between 2000 and 2021?*__

1. How do movies’ ratings on “metracritic.com” correlate with their box office performance? Does this correlation 
differ across reviewers with different degrees of expertise?
2. How does movies’ production budget correlate with their box office performance? Does this correlation differ across 
movie genres?
3. How does reviews’ sentiment (negative, positive) affect movies’ box office performance? 
4. How does the length of movies’ titles correlate with their box office performance? 
5. How does movies 'age rating affect their box office performance? Does this effect vary according to movies’ release
date?  

## Hypothesis bases on literature review
H1a) Movies’ rating and respective box office performance are positively correlated: the higher the rating a movie 
gets, the higher its box office revenue.  
H1b) The correlation of box office revenue with Metascores is stronger than that of box office with User scores.

H2a) Production budget and box office performance are positively correlated: the higher a movie’s production budget, 
the higher its box office revenue. 
H2b) The correlation between production budget and box office is stronger for movies of the genre “Adventure” compared
to other genres. 

H3) The polarity of movies’ reviews influences the box office revenue. Reviews with positive polarity will yield higher
box office revenues than negative ones. 

H4) Title length and box office revenues are negatively correlated: the longer a movie title, the lower the box office
performance. 

H5a) Age ratings influence movies’ box office, as movies with age restrictions generate a lower box office revenue than
movies aimed at all ages.  
H5b) The effect of age ratings on box office depends on the movie’s month of release.  Movies without age ratings 
restriction yield a better box office performance than movies with limitation, but only during the month of July, 
August and December.  

## ERD diagram
![ERD group 5.png](SQL and Python files/ERD group 5.png)

## Requirements to run the project 
* Windows pc
* Postgres 15
* Python 3.9.13
* Python packages: see requirements.txt

## Instructions
1. Execute `Create_tables.sql`
2. Execute all scripts in the file `Cleaning_datasets`
3. Import csv files to corresponding tables in SQL. Follow the order of the SQL script.



## Representation of the database
![img_2.png](SQL and Python files/img_2.png)