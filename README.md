# Rainbows: Arrays and Hashes in combination
Let's practice when and where to use Arrays and Hashes, as well as how to interact with them when they are used in combination.

## Pre-learning: RGB Color Codes
In this exercise we are going to explore the use of Arrays and Hashes in a bit of detail. We will be talking about Rainbows and different color combinations. Before doing this, you should first [read up on the basics of RGB color codes](http://wikipedia.org)

## Variables and Data Types
We use variables to store information that we want to access and/or change later, but when creating those variables it is important that we choose the right Data Type for our information. Right now we only know a handful of Data Types, but in the future we are going to learn about many, many more different types of data. Each has its own use and we should consider that when picking which we use.

For example, if we wanted to store some different colors RGB color codes, we could do something like:

```ruby
red_hex = "#FF0000"
green_hex = "#00FF00"
blue_hex = "#0000FF"
```

Or maybe:

```ruby
red_rgb = "rgb(255,0,0)"
green_rgb = "rgb(0,255,0)"
blue_rgb = "rgb(0,0,255)"
```

**think** But what are the limitations of this?

We are showing the representations of the colors, but what if we wanted to make a color calculator? (_spoiler alert_: That's what we are going to do.) How could we access and/or change the values separately? We can do it, but it'd require some extra code that's not as readable as it could be.

Perhaps:

```ruby
red_hex = red[1..2]
```

Getting individual values out of the rgb codes would be even harder because you can't index the three values the same way you can with the hex values. (i.e. In Hex, the Red in RGB is always the first two characters after the #. In RBG, the Red is not always characters 4 through 6 like it is in red_rgb, since in green_rgb it's actually only character 4.)

**think**: What would be a better data structure for storing values like this, so that we can access each piece individually, or the collection as a whole?

## Arrays
Did you read the title? Ok, yes, arrays would make this better.

```ruby
red = [255,0,0]
green = [0,255,0]
blue = [0,0,255]
```
