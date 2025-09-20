### Migrating to YAML
As it turns out, the DevOps course is getting overhauled!
Instead of keeping track of all users using a JSON configuration file, we want to move to YAML!
This is where the notion of "single source of truth" comes in, and where we see why Dhall is so good for DevOps.
Instead of rewriting anything, we simply use our Dhall program to generate YAML instead!

To do this, instead of using `~/bin/dhall-to-json`, simply use `~/bin/dhall-to-yaml`.
```
~/bin/dhall-to-yaml --file ~/main.dhall
```{{exec}}

See, that was pretty easy!

### Migrating to CSV
But wait, YAML isn't what we want either.
For some reason, we really like dividing values by columns, so we want to use CSV-format.
Now, `dhall-to-csv` exists.
However, what if we didn't have it?
We want to let you write your own CSV formatter.

For those that need a quick refresher on CSV formatting, here we have an example of a user in a CSV file:
```
name,role,email
Herdi,Student,herdi@mail.com
```{{}}

Now, go and edit the code in `csv.dhall` and add support for CSV files.
Note that most of it is filled in, you just need to define two things:

1. The first row describing our columns
2. How each `User` is outputted

When you think your solution is correct, use the dhall interpreter and output it to a new file called `users.csv` like this:
```
~/bin/dhall text --file ~/csv.dhall --output users.csv
```{{exec}}

Note: The verification script for this step checks that you have a valid YAML and CSV file with the original users.
