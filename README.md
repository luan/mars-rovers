# Mars Rovers

I used RSpec for unit testing together with guard and guard-rspec for continuous testing.
I used Rake for running everything.

There are 3 rake tasks:

```
$ rake -T
rake batch        # Run the app in batch mode
rake interactive  # Run the app in interactive mode
rake spec         # Run RSpec code examples
```

 - The batch mode will run the example input from the specification.
 - The interactive mode will expect user input, that could be eigher typed in the thermina
 or directed from the command line with pipes or < assignments.
 - The spec task runs all the unit tests

 Example usage:

```
$ rake batch
=> 1 3 N 5 1 E
```

### plateau.txt

```
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
```

```
$ rake interactive < plateau.txt
=> 1 3 N 5 1 E
```

```
$ rake interactive
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
<Control-D>
=> 1 3 N 5 1 E
```


I assumed that a rover can't go out of the plateau (one rover hits the edge won't go further).
I assumed that rovers can walk through each other (two or more rovers can occupy the same position).
