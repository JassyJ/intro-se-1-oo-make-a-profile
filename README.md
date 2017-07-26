# Make a Profile class

## The goal:

Today, we're learning about creating instances (individual versions) of classes (Types that we use a blueprints). This will unlock a lot of power for us later, but getting a class off the ground takes a lot of work - especially when it comes to the core initializer, reader, and writer methods.

Ultimately, we want to be able to create profiles for individual people, and then access and  change the data we have about those people.

### Write an initializer method

Ultimately, we want to be able to create new profiles in our **test.rb** file with a lines of code that look like this:

```swift
first_profile = Profile.new("Nicki")
second_profile = Profile.new("Sarah")
```

In order for that code to work, you'll need to write an initializer method in our **profile_class.rb** file for the Profile class - otherwise, Ruby has no idea what `.new("Nicki")` might mean. Try to do it on your own, but if you forget, click the dropdown to see one way to do it.

<details>
  <summary>Click to see an example</summary>
  ```swift
  class Profile

    def initialize(name)
      @name = name
    end

  end

  ```
</details>

When you think you're ready to test your code, enter the command `ruby test.rb` in terminal.

### Write a reader (or getter) method

We also want to be able to print out someone's name in our **test.rb** file with a line of code that look like this one:

```swift
puts(first_profile.name)
```

Add code to your test.rb file that attempts to print the name of one of your profiles out to the console.

In order for that code to work, you'll need to write a reader method in our **profile_class.rb** file for the Profile class - otherwise, Ruby has no way off knowing what your `.name` method might might mean. Try to do it on your own, but if you need an example, click the dropdown to see one way to do it.

<details>
  <summary>Click to see an example</summary>
  ```swift
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

When you think you're ready to test your code, enter the command `ruby test.rb` in terminal.

### Write a writer (or setter) method

One last thing: we also need to be able to change someone's name. If someone named "Ellen" decides to start going by "Eli", we want to give that person permission to do so. We need a writer method.

Let's attempt to change someone's name in our **test.rb** file by adding a few lines of code that look like these:

```swift
first_profile.name = "Nicki the Great"
puts(first_profile.name) #print out their name to make sure the change worked.
```

In order for that code to run, you'll need to write a writer method in our **profile_class.rb** file for the Profile class - otherwise, Ruby has no way off knowing what your `.name = "new name"` method might might mean. Try to do it on your own, but if you need an example, click the dropdown to see one way to do it.

<details>
  <summary>Click to see an example</summary>
  ```swift
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

When you think you're ready to test your code, enter the command `ruby test.rb` in terminal.

### Write three more reader and writer methods.

Now that you've written an initializer method, a reader method, and a writer method, you should practice and make sure you understand how this works.

**Give your Profile at least three more attributes, and write a reader / writer method for each of them.** Reference your own Facebook, Insta, or Twitter profiles to see what sort of information is usually on a profile.

If you need some ideas, here are some other attributes that we could give each profile:
    * `@age` which stores a user's age as an integer
    * `@verified` which is a boolean that tells whether a user is verified or not
    * `@email` which stores a user's email address as a string
    * BONUS: `@favorite_movies` which is an array of the user's favorite movies, stored as strings.

### Learn the shorter, faster way

Did this feel tedious?

Now that you've done the hard work, you may be interested to know that there's a shortcut to writing reader and writer methods for a class in Ruby. Try searching for "Ruby Reader & Writer Methods". Can't find it on your own? Ask around!
