# Quantum-Genetic-algorithm
   A Genetic algorithm is optimizing algorithm that works on finding the maxima or minima of a given problem using the concept involved in the Genetic of the nature.
   Now discussing about quantum ,Quantum computing as always been the main intrest of the researchers for the past 2 centuries .
   The key about all these researchs are to make the algorithms ready by implementing them in the classical domain so that once the quantum computers have been developed
   we can work these over them
   Quantum computing exist till data not quantum computers(But claimed by IBM)
   
   
  ## Classical Genetic Algorithm:
    As the name suggest the approach to the  multi-objective-optimization techinque follows the following techniques:
      * population
          * create a sample population to work on ,the initial state
      * fitness of the population
          *calculate the objective fucntion values of these intial population(in the scenario the population is just random points generated)
      * cross over
          * allow two parents to mate(two solutions combined in any order to provide a new solution)
      * mutation
          * parent inheriting new properties(randomly flip any one or many bits in the solution,solutions are binary)
      * natural selection 
          * if the childs obj value is less(in case of minimization) remove the parent and add the child to the population
   similarly the process carries out untill a recurring solution has been found
   
  ## The Implementation of Quantum Concepts
   The implementation of the quantum concepts consist of coverting the quantum chromosomes into classical numbers so that the genetic algorithm could process them      and the resulting classical chromosome could be converted into the quantum chromosome so that they will now be the base class parents for the further iterations.
   
   
