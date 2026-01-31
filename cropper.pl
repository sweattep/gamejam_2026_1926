#!/usr/bin/perl                 # This is the helper's little start line.
use strict;                     # This helps the helper be careful and neat.
use warnings;                   # This helps the helper notice tiny mistakes.

# This helper keeps a list of tiny steps for moving across the picture.
# Each step is 130 pixels, which is how big each baby square will be.
my @steps = (0, 130, 260, 390); # These are the places where the helper will stop.

# This helper starts counting at 1.
# It will count each baby square it makes, one by one.
my $count = 1;                  # This is the helper's little number counter.

# Now the helper will look at each row of the picture.
for my $y (@steps) {            # This is the helper moving down the picture.

    # Now the helper will look at each column in this row.
    for my $x (@steps) {        # This is the helper moving across the picture.

        # The helper will now cut out one baby square.
        # It uses the convert tool to snip the little piece.
        system("convert input.png -crop 130x130+${x}+${y} tile_$count.png");

        # After making a baby square, the helper counts up by one.
        $count++;               # The helper says, "Now I am on the next number!"
    }
}
