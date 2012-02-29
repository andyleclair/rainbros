# unused for now
module Paint
  class << self
    # Adds ansi sequence
    def wrap(*ansi_codes)
      "\033[" + ansi_codes*";" + "m"
    end
  end
end
