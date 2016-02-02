
# menu = """1.Print Name\n2.Print Birthday\n3. Print Name and Birthday"""
class Person

  @print_stuff: ->
    console.log("Name: #{@name}, Birthday #{@birthday}")


Paulito = new Person("5'9", "160lbs")
Paulito.print_stuff
