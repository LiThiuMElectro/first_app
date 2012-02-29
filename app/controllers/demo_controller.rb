class DemoController < ApplicationController

layout 'admin'

  def index
    #render(:action => 'hello') old stuff pu utiliser
    #render(:template => 'demo/hello') encore utiliser good stuff
    #render('hello')  #syntaxe utiliser présentement
    #redirect_to(:action => 'other_hello')

  end


  #va render le template nommé hello qui est dans view
  def hello
  	#instance variable quia va pouvoir être caller dans n'importe quelle template "views" parceque est builder dans le controler
  	@array = [1,2,3,4,5]
  	#to.i convert le nombre en interger qui peu être utiliser comme chiffre pour des maths
    @id = params[:id].to_i
    @page = params[:page].to_i 	
    #redirect_to("http://www.google.com")
  end
  #va renderer le test ou un autre action 'other hello'
  def other_hello
    render(:text => 'hello everyone')
  end
 def javascript
 end
 def escape_output
 end

end
