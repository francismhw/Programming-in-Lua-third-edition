--[[Exercise 2.1: What is the value of the expression type(nil)==nil?
(You can use Lua to check your answer.) Can you explain this result?]]--
print(type((nil)))
print(type(type(nil)))
print(type(nil) == nil)
print(nil == nil)
print("nil" == nil)
--false
--result of type returns string so "nil" does not equal nil


--[[Exercise 2.2: Which of the following are valid numerals? What are their values?
     .0e12   .e12   0.0e   0x12   0xABFG   0xA   FFFF   0xFFFFFFFF
     0x   0x1P10   0.1e1   0x0.1p1 ]]--
print(.0e12)
--.e12 no decimal
--0.0e no exponent
print(0x12)
--0xABFG G invalid hex (only goes to f)
print(0xA)
--FFFF doesn't start with 0x
print(0xFFFFFFFF)
--0x no hex identified
print(0x1P10)
print(0.1e1)
print(0x0.1p1)

--[[Exercise 2.3: The number 12.7 is equal to the fraction 127/10,
where the denominator is a power of ten.
Can you express it as a common fraction where the denominator is a power of two?
What about the number 5.5?]]--
--numbers ending in 7 not 
print(11/2)

--[=[How can you embed the following piece of XML as a string in Lua?
     <![CDATA[
       Hello world
]]>
Show at least two different ways.]=]--

string = [=[
<![CDATA[
    Hello world
]]>
]=]

print(string)

string = "<![CDATA[\n\tHello world\n]]>"
print(string)

--[[Exercise 2.5: Suppose you need to format a long sequence of arbitrary bytes
as a string literal in Lua. How would you do it? Consider issues like
readability, maximum line length, and performance.]]--
--[[
We can delimit literal strings also by matching double square brackets,
as we do with long comments. Literals in this bracketed form can run
for several lines and do not interpret escape sequences. Moreover,
this form ignores the first character of the string when this character
is a newline. This form is especially convenient for writing strings
that contain large pieces of code]]--


--[[Exercise2.6: Assumethefollowingcode: a={}; a.a=a
What would be the value of a.a.a.a? Is any a in that sequence somehow different from the others?
Now, add the next line to the previous code:
a.a.a.a = 3
What would be the value of a.a.a.a now?]]--
a = {};
a.a = a
print("a", a)
print("a.a", a.a)
print("a.a.a", a.a.a)
print("a.a.a.a", a.a.a.a)
a.a.a.a = 3
print(a)
print(a.a)
--print(a.a.a.a)
--3.a.a doesn't exist in table

