# Make a Profile class

## The goal:

Today, we're learning about creating instances (individual versions) of classes (Types that we use as blueprints). This will unlock a lot of power for us later, but getting a class off the ground takes a lot of work - especially when it comes to the core initializer, reader, and writer methods.

Our end goal is to be able to create profiles for individual people, and then access and change the data we have about those people.
<br><br>

## Write an initializer method

Ultimately, we want to be able to create new profiles in our **test.rb** file with lines of code that look like this:

```Ruby
first_profile = Profile.new("Nicki")
second_profile = Profile.new("Sarah")
```

In order for that code to work, you'll need to write an initializer method in our **profile_class.rb** file for the Profile class - otherwise, Ruby has no idea what `.new("Nicki")` might mean. Try to do it on your own, but if you forget, click the dropdown to see one way to do it.

<details>
  <summary>Click to see an example of an initializer method</summary>

  ```Ruby
  class Profile

    def initialize(name)
      @name = name
    end

  end
  ```

</details>
<br>
When you think you're ready to test your code, enter the command `ruby test.rb` in terminal.
<br><br>

## Write a reader (or getter) method

We also want to be able to print out someone's name in our **test.rb** file with a line of code that look like this one:

```Ruby
puts(first_profile.name)
```

Add code to your test.rb file that attempts to print the name of one of your profiles out to the console.

In order for that code to work, you'll need to write a reader method in our **profile_class.rb** file for the Profile class - otherwise, Ruby has no way of knowing what your `.name` method might might mean. Try to do it on your own, but if you need an example, click the dropdown to see one way to do it.

<details>
  <summary>Click to see an example of a reader method</summary>

  ```Ruby
  class Profile

    def initialize(name)
      @name = name
    end

    def name # reader method returns this user's name when you ask for their .name
      return @name
    end

  end
  ```

</details>
<br>
When you think you're ready to test your code, enter the command `ruby test.rb` in terminal.
<br><br>

## Write a writer (or setter) method

One last thing: we also need to be able to change someone's name. If someone named "Ellen" decides to start going by "Eli", we want to give that person permission to do so. We need a writer method.

Let's attempt to change someone's name in our **test.rb** file by adding a few lines of code that look like these:

```Ruby
first_profile.name = "Nicki the Great"
puts(first_profile.name) #print out their name to make sure the change worked.
```

In order for that code to run, you'll need to write a writer method in our **profile_class.rb** file for the Profile class - otherwise, Ruby has no way of knowing what your `.name = "new name"` method might might mean. Try to do it on your own, but if you need an example, click the dropdown to see one way to do it.

<details>
  <summary>Click to see an example of a writer method</summary>

  ```Ruby
  class Profile

    def initialize(name)
      @name = name
    end

    def name
      return @name
    end

    def name=(new_name) # writer method resets the user's name to the new name you specify.
      @name = new_name
    end

  end
  ```

</details>
<br>
When you think you're ready to test your code, enter the command `ruby test.rb` in terminal.
<br><br>

#### On your own:

Make sure you've got the syntax down. adding in an instance variable called `@age` which stores a user's age as an integer. In order to add this property *and* test to see if it worked, you'll need to do a minimum of four things:

1. Add a writer method for `@age=`. Model this one after the writer method you just used.
2. In the test.rb file, add a line of code testing the writer method. If the program runs without error, we're on the right track! Done well, it would look something like this:
```Ruby
first_profile.age = 27
```
3. Add a reader method for `@age`. Model this one after the reader method we wrote earlier.
4. In the test.rb file, add a line of code testing the reader method. If the program runs print's Nicki's age, we've done it! The test code will look something like this:
```Ruby
puts(first_profile.age) # If we did it all correctly, this code ought to print out the user's age.
```
<br><br>

## Write three more reader and writer methods

Now that you've written an initializer method, a reader method, and a writer method, you should practice and make sure you understand how this works.

**Give your Profile at least three more attributes, and write a reader / writer method for each of them.** Reference your own Facebook, Insta, or Twitter profiles to see what sort of information is usually on a profile.

If you need some ideas, here are some other attributes that we could give each profile:
  - `@height` which stores a user's height, in inches, as an integer
  - `@verified` which is a boolean that tells whether a user is verified or not
  - `@email` which stores a user's email address as a string
  - BONUS: `@favorite_movies` which is an array of the user's favorite movies, stored as strings.
<br><br>
## Learn the shorter, faster way

Did this feel tedious?

Now that you've done the hard work, you may be interested to know that there's a shortcut to writing reader and writer methods for a class in Ruby. Try searching for "Ruby Reader & Writer Methods". Can't find it on your own? Ask around!
