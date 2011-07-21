class Alias
  attr_accessor :aliases

  def initialize()
    @aliases = {}
  end

  def add_alias( name, command )
    @aliases[name] = command
  end

  def remove_alias( name )
    @aliases.delete(name)
  end

  def method_missing( m, *p )
    if @aliases.key?(m.to_s)
      args = '"'+  p.join('","') + '"'
      eval( @aliases[m.to_s] + " " + args )
    else
      puts "Fails to load alias"
    end  
  end
end  
