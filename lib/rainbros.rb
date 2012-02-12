require "rainbros/version"

module Rainbros
  class BroItOut
    def go
      bros = ARGV.pop

      if bros == "forever"
        bros_forever
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
  end
end
