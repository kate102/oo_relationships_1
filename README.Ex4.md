## I found this quite challenging at first.
## I could see how to extract the reverse and unreverse functionality
## and I chose to make one depenant on the other as the code is the same 
## and they are by nature, related.
## However the scrambling and unscrambling was more complex
## I decided that these two should also be linked so if there was a 
## change in the coding of the text then this should be tightly coupled
## to the decoding of the text, as with the reversing.
## So I decided to have a parent class Scramble, that had a default "+" operator
## and a subordinate child who had a "-" operator


