# DB quiz correction

[The DB schema](https://kitt.lewagon.com/db/63111)

What’s the SQL query to get books
written before 1985?

```
SELECT *
FROM books
WHERE year < 1985
```

What’s the SQL query to get the 3 most 
recent books written by Jules Verne?

```
SELECT *
FROM books
JOIN authors ON books.author_id = authors.id
WHERE authors.name = 'Jules Verne'
ORDER BY books.year DESC
LIMIT 3
```

```
#1. Add your favorite author to the DB
fav_author = Author.new(name: "J.K. Rowling")
fav_author.save
# Author.create(name: "J.K. Rowling")

#2. Get all authors
Author.all

#3. Get author with id=8
Author.find(8) # only take an id

#4. Get author with name="Jules Verne", store it in a variable: jules
# Author.where(name: 'Jules Verne')  # always returns an array of Author instances
jules = Author.find_by(name: 'Jules Verne') # always ONE instance of Author

#5. Get Jules Verne's books
jules.books

#6. Create a new book "20000 Leagues under the Seas". Store it in a variable: twenty_thousand
# .create == .new + .save
twenty_thousand = Book.new(
  title: "20000 Leagues under the Seas", 
  year: 1870
)

#7. Add Jules Verne as this book's author
twenty_thousand.author = jules

#8. Now save this book in the DB!
twenty_thousand.save

# equivalent to 6.7.8
# Book.create(
#   title: "20000 Leagues under the Seas", 
#   year: 1870,
#   author: jules
# )
```