# Class is a blueprint to create an object
# The goal of object-oriented design is to use code to model real object as classes
# An object is a custom container for data. It is made from a class
# An object is an instance of the class. It is created from the class.
#
# Everything in ruby is object

p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
p 5.class.superclass.superclass.superclass.superclass

p Hash.new(0).class.superclass

# 209~