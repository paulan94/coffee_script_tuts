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
    'roommates':
        vinh: 'gey'
        'chyn': 'lol'

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
    console.log(food)

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


### ARRAY SLICING and SPLICING with RANGES
