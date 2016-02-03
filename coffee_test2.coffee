###FUNCTIONS###


square = (x) ->
    x * x
cube = (x) ->
    square(x) * x

# console.log(cube(2))

fill = (container, liquid = "coffee") ->
    "Fill the #{container} with #{liquid}"

# console.log(fill("bag", "swag"))



###OBJECTS AND ARRAYS###



song = ["Before", "ColeWorld", "Gone"]

artists =
    J_COLE: "Rap"
    JAY_Z: "Rap"

# console.log(artists)

friends =
    roommates:
        vinh: 'gey'
        chy: 'lol'

# console.log(friends.roommates.vinh)
# console.log(song.join(', '))



###LEXICAL SCOPING AND VARIABLE SAFETY ###



outer = 1
changeNumbers = ->
    inner = -1
    outer = 10
lawl = changeNumbers()
# console.log(lawl)


###IF,ELSE, UNLESS, & CONDITIONAL ASSN###


# mood = greatlyImproved if singing
# if happy and knowsIt
#     clapsHands()
#     chaChaCha()
# else
#     showIt()
#
# date = if friday then sue else jill


###SPLATS###


gold = silver = rest = "unknown"

awardMedals = (first,second,others...) ->
    gold = first
    silver = second
    rest = others

contenders = [
    "mike phelps"
    "liu kang"
    "chinito"
    "fkem"
    "dawg"
    "tupac"
]

# awardMedals contenders...
# console.log "Gold: #{gold}\nSilver: #{silver}\nOthers: #{rest}"


###LOOPS & COMPREHENSIONS ###

eat = (food) ->
    console.log food

# eat food for food in ['toast', 'hamburg', 'wine']
courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']
# eat food for food in courses when food isnt 'cake'

countdown = (num for num in [0..10] by 2)
# console.log countdown

yearsOld = max:10, ida: 9, tim:11

# ages = for child,age of yearsOld
#     console.log "#{child} is #{age}"


# num = 6
# lyrics = while num -= 1
#   console.log "#{num} little monkeys, jumping on the bed.
#     One fell out and bumped his head."


### ARRAY SLICING and SPLICING with RANGES###


numbers = [1,2,3,4,5,6,7,8,9]

start = numbers[0..2]
middle = numbers[3..-2]
end = numbers[-2..]
copy = numbers[..]
# console.log numbers

numbers[3..6] = [-3,-4,-5,-6]
# console.log numbers


###TRY EXCEPT ###


# console.log(
#     try
#         nonexistent / undefined
#     catch error
#         "and the error is #{error}"
# )


###CLASSES & INHERITENCE & SUPER ###


class Animal
    constructor: (@name) ->
    move: (meters) ->
        console.log @name + " moved #{meters}"

class Snake extends Animal
    move: ->
        console.log "Slithering..."
        super 5

class Shark extends Animal
    move: ->
        console.log "Swimming..."
        super 45

pig = new Animal "Piggy"
snake = new Snake "Slitherlyn"
shark = new Shark "Chomper"
# snake.move()
# pig.move(5)


###DESTRUCTURING ASSIGNMENT ###


theBait   = 1000
theSwitch = 0

[theBait, theSwitch] = [theSwitch, theBait]

# console.log theBait, theSwitch

text = "Every literary critic believes he will
        outwit history and have the last word"

[first, ..., last] = text.split " "

class Person
    constructor: (options)->
        {@name, @age, @height = 'average'} = options

paul = new Person name: "Paul", age: 15

# console.log "Name: " +paul.name



### BOUND FUNCTIONS, GENERATOR FUNTIONS ###


perfectSquares = ->
    num = 0
    loop
        num += 1
        yield num * num
    return

ps = perfectSquares()

# console.log ps.next().value
# console.log ps.next().value
# ps.next().value


### EMBEDDED JAVASCRIPT ###


### SWITCH/WHEN/ELSE ###


# switch day
#     when "Mon" then go work
#     when "Tue" then go relax
#     when "Thu" then go iceFishing
#     when "Fri"
#         if day is bingoDay
#             go bingo
#             go dancing
#     when "Sun" then go church
#     else
#         go work
#
score = 76
grade = switch
    when score < 60 then "F"
    when score < 70 then "D"
    when score < 80 then "C"
    when score < 90 then "B"
    else 'A'

# console.log grade



### TRY/CATCH/FINALLY###


# try
#   functionname1()
# catch error
#     console.log "the error is #{error}"
# finally
#     console.log "lolito"



###CHAINED COMPARISONS###


cholesterol = 127

healthy = 200 > cholesterol > 60

# console.log healthy


###String Interpolation, Block Strings, & Block Comments###


author = "Wittgenstein"
quote  = "A picture is a fact. -- #{ author }"

sentence = "#{ 22 / 7 } is a decent approximation of π"
