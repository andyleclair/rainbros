# unused for now
module Paint
  class << self
    # Adds ansi sequence
    def wrap(*ansi_codes)
      "\001\033[" + ansi_codes*";" + "m\002"
    end
  end
end
