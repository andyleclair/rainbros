module Rainbros
  class BroItOut
    def go
      bros = ARGV.pop

      case bros
        when "forever" then bros_forever
        when "irb" then irb_bro
        else
          bros ||= 12

          if (n = bros.to_i) > 0
            bros n
          else
            no_bros
          end
      end
    end

    private
    def bros_forever
      trap('SIGINT') { exit! }
      while true
        exit! unless system('dicks | lolcat')
      end
    end

    def bros n
      system("dicks #{n} | lolcat")
    end

    def no_bros
      system("echo 'y u no want rainbros?' | lolcat")
    end

    def irb_bro
      IRB.start
    end
  end
end
