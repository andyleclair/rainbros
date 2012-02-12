require "rainbros/version"
require 'lolcat/lol'
require 'stringio'
require 'irb'

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


    module ::IRB
      class << self
        alias :old_setup :setup

        def setup(ap_path)
          old_setup(ap_path)
          prompt = "8===D~~ "
          opts = {
            :spread => 3.0,
            :freq => 0.8,
            :os => rand(256),
            :speed => 1.0
          }
          output = capture_stdout {::Lol.cat([prompt], opts)}
          output = output.string.chomp
          default = @CONF[:PROMPT][:DEFAULT]
          @CONF[:PROMPT][:RAINBROS] = {
            :PROMPT_I => "#{default[:PROMPT_I][0..-3]}#{output}",
            :PROMPT_N => "#{default[:PROMPT_N][0..-3]}#{output}",
            :PROMPT_S => "#{default[:PROMPT_S][0..-2]}#{output}",
            :PROMPT_C => "#{default[:PROMPT_C][0..-2]}#{output}",
            :RETURN => "#{output}#{default[:RETURN][3..-1]}"
          }
          @CONF[:PROMPT_MODE] = :RAINBROS
          @CONF[:AUTO_INDENT] = true
        end
      end
    end

    module ::Kernel
      def capture_stdout
        out = StringIO.new
        $stdout = out
        yield
        return out
      ensure
        $stdout = STDOUT
      end
    end

  end
end
