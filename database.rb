require 'mysql2'

class Database

  def initialize
    @host = '127.0.0.1'
    @port = 3306
    @login = 'root'
    @password = 'root'
    @database = 'office'
  end

  def initialize(host,port,login,password,database)
    @host = host
    @port = port
    @login = login
    @password = password
    @database = database
  end

  def getQuery(sqlquery)
      self.connectMysql
      @result = @con.query(sqlquery)
      @con.close
      @result      
  end


protected
  def connectMysql 
    @con = Mysql2::Client.new(:host => @host, :port => @port, :username => @login, :password => @password, :database => @database)
    rescue Mysql2::Error
        puts "Can't connect to MySQL!"
        exit 1  
    end
end

