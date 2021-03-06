# Generators and Generator Expressions
{id: generator-experssions}

## Iterators vs Generators
{id: iterators-vs-generators}

* a generator is an iterator
* an iterator is an iterable

![](examples/advanced/iterable.py)

* Genarators are a simpler way to create an iterable object that iterators, but iterators allow for more complex iterables.
* To create a generator we only need a single function with **yield**.
* To create an iterator we need a class with two methods: **__iter__** and **__next__**

![](examples/advanced/list_vs_generator.py)
![](examples/advanced/list_vs_generator.out)


## List comprehension vs Generator Expression
{id: list-comprehension-vs-generator-expression}
{i: getsizeof}

![](examples/lists/generator_expression.py)
![](examples/lists/generator_expression.out)

[List Comprehension vs Generator Expressions](http://code-maven.com/list-comprehension-vs-generator-expression)


## List comprehension vs Generator Expression round 2
{id: list-comprehension-generator}
{i: getsizeof}

![](examples/lists/list_comprehension_generator.py)


## Generators - simple function
{id: generators-simple-function}

![](examples/generators/simple_function.py)
![](examples/generators/simple_function_multiple_return.py)


## Generators - simple generators (yield)
{id: generators-simple-generators}
{i: yield}

![](examples/generators/simple_generator.py)


## Generators - simple generators - call next
{id: generators-simple-generators-next}
{i: __next__}
{i: StopIteration}

![](examples/generators/simple_generator_next.py)
![](examples/generators/simple_generator_next.out)

![](examples/generators/simple_generator_next_other.py)

## Generators - fixed counter
{id: generators-fixed-counter}

![](examples/generators/generator_counter_3.py)
![](examples/generators/generator_counter_3.out)


## Generators - counter
{id: generators-counter}

![](examples/generators/generator_counter.py)
![](examples/generators/generator_counter.out)


## Generators - counter with parameter
{id: generators-counter-parameter}

![](examples/generators/generator_counter_param.py)
![](examples/generators/generator_counter_param.out)


## Generators - my_range
{id: generators-increment}

![](examples/generators/gen.py)
![](examples/generators/gen.out)


## Fibonacci plain
{id: fibonacci-plain}

![](examples/generators/fibonacci_plain.py)


## Fibonacci copy-paste
{id: fibonacci-copy-paste}

![](examples/generators/fibonacci_copy_paste.py)


## Fibonacci - generator
{id: generators-fibonacci}

![](examples/generators/fibonacci_generator.py)

{aside}

The fibonacci() function is called 5 times. When it reached the 'yield' command it returns the value
as if it was a normal return call, but when the function is called again, it will be executed starting
from the next statement. Hence the word 'after' will be printed after each call.
{/aside}



## Infinite series
{id: infinite-series}


## Integers
{id: integers}

![](examples/generators/integers.py)
![](examples/generators/integers.out)


## Integers + 3
{id: integers-plus-3}

![](examples/generators/integers_add_3.py)
![](examples/generators/integers_add_3.out)


## Integers + Integers
{id: add-integers}
{i: itertools}
{i: zip}

![](examples/generators/add_integers.py)
![](examples/generators/add_integers.out)


## Filtered Fibonacci
{id: filtered-fibonacci}

![](examples/generators/filtered_fibonacci.py)
![](examples/generators/filtered_fibonacci.out)


## The series.py
{id: series}

This is the module behind the previous examples.

![](examples/generators/series.py)

## generator - unbound count (with yield)
{id: iterator-count}

![](examples/generators/count_manual.py)
![](examples/generators/count_manual.out)

## iterator - cycle
{id: iterator-cycle}

![](examples/generators/cycle_manual.py)
![](examples/generators/cycle_manual.out)


## Exercise: Alternator
{id: exercise-alternator}

Create a generator for the following number series: 1, -2, 3, -4, 5, -6, ...


## Exercise: Prime number generator
{id: exercise-prime-number-generator}

Create a generator that will return the prime numbers:
2, 3, 5, 7, 11, 13, 17, ...


## Exercise: generator
{id: exercise-generator}

Take the two generator examples (increment number and Fibonacci) and change them to provide infinite iterations.
Then try to run them in a for loop. Just make sure you have some other condition to leave the for-loop.


## Exercise: Tower of Hanoi
{id: exercise-tower-of-hanoi}

There are 3 sticks. On the first stick there are n rings of different sizes. The smaller the ring the higher it is on the stick.
Move over all the rings to the 3rd stick by always moving only one ring and making sure that never will there be a large ring on top
of a smaller ring.


## Exercise: Binary file reader
{id: exercise-binary-file-reader}

Create a generator that given a filename and a number n will return
the content of the file in chunks of n characters.

## Exercise: File reader with records
{id: exercise-file-reader-with-records}

In a file we have "records" of data. Each record starts with three bytes in which we have the length of the record.
Then the content.

```
8 ABCDEFGH 5 XYZQR
```

![](examples/advanced/rows.txt)
![](examples/advanced/rows_to_records.py)
![](examples/advanced/records.txt)


