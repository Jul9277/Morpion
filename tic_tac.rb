class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
    attr_accessor :value, :number
  
  def initialize(value, number)
    #TO DO doit régler sa valeur, ainsi que son numéro de case
      @value = []
      @number= []
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :array            

  def initialize 
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
      @array = [1..9].first(9)
  end

  def to_s
  #TO DO : afficher le plateau
      puts " 1 | 2 | 3 ",
           " 4 | 5 | 6 ",
           " 7 | 8 | 9 "
      print "\n"
  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    #TO DO : qui gagne ?
      @winnig = [1, 2, 3], [4, 5, 6], [7, 8, 9], [3, 5, 7], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9]
  end
end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
attr_accessor :name, :value
attr_writer :state
  
  def initialize(name, value, state)
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    @name = name
    @value = value
    @state = state
  end
end

class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board

    puts "Quel est ton nom?"
    name1 = gets.chomp
    puts "Et celui de ton adversaire?"
    name2 = gets.chomp
    
    player1 = Player.new(name1, "X")
    player2 = Player.new(name2, "O")

  end

  def go
    # TO DO : lance la partie
    puts "Bienvenue au Morpion. Appuie n'importe où pour commencer."
            puts ""
            @@input = gets.chomp

    start =Board.new(array)

  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end

Game.new.go