require 'socket'

class Server
  def initialize(host,port)
    @host = host
    @port = port
    @log = self.logger
  end
  
  def initialize(port)
    @host = '127.0.0.1'
    @port = port
    @log = self.logger
  end

  def initialize()
    @host = '127.0.0.1'
    @port = '3000'
    @log = self.logger
    @log.write "Start debug"
  end

  def startServer
    puts "Start server"
    @server = TCPServer.new(@host,@port)     
    
    @log.puts "Start tcpserver\n"
    loop do
      @log.write "start loop"
      puts "loop"
      

        Thread.start(@server.accept) do |client|
            @log.write "accept connection"
            puts "accept connection\n"
            user = User.new(client.gets.chomp.split(' '))
            @log.write "creaete user class"
            puts "creaete user class"
            user.getSubject               
            @log.write "user getSubject"           
            puts "user getSubject"           
            server.puts "#{user.resiveSubject}"
            @log.write "user resive subject"
            puts "user resive subject"
            client.close
            @log.write "Client close"
            puts "Client close"
        end
    end
  end

  def stopServer
    server.close
  end

protected
  def logger
    file = File.open("tcpserver.log", "w")
    return file
  end
end


class User
  @@userid = 0

    def initialize(subject)
      @@userid+=1
      @subject = subject 
    end

    def getSubject
        
        command = @subject[0]
#        arg = @subject[1]
        puts command
        case command
            when "GET"
              begin
                str = "hi get operation\n"
              end
            
            when "SET"
              begin
                str = "hi SET operation\n"
              end
        end
      return str
    end
end

server = Server.new
server.startServer
