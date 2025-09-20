### Migrating to YAML
As it turns out, the DevOps course is getting overhauled!
Instead of keeping track of all users using a JSON configuration file, we want to move to YAML!
This is where the notion of "single source of truth" comes in, and where we see why Dhall is so good for DevOps.
Instead of rewriting anything, we simply use our Dhall program to generate YAML instead!

To do this, instead of using `~/bin/dhall-to-json`, simply use `~/bin/dhall-to-yaml`.
```
~/bin/dhall-to-yaml --file ~/tutorial-files/main.dhall --output users.yaml
cat users.yaml
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

A code skeleton is prepared at `~/tutorial-files/csv.dhall`.
You just need to fill in two places to make it work:

1. The first row describing our columns
2. How each `User` is outputted

Go do that now:
```
vim ~/tutorial-files/csv.dhall
```{{exec}}

When you think your solution is correct, use the dhall interpreter and output it to a new file called `users.csv` like this:
```
~/bin/dhall text --file ~/tutorial-files/csv.dhall --output users.csv
cat users.csv
```{{exec}}

Note: The verification script for this step checks that you have a valid YAML and CSV file with the original users.
