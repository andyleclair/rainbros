module Lol
  def self.cat(fd, opts={})
    text = []
    fd.each do |line|
      opts[:os] += 1
      text << println(line, opts)
    end
    text.join("\n")
  end

  def self.println(str, defaults={}, opts={})
    opts.merge!(defaults)
    str.chomp!
    str.gsub! STRIP_ANSI, '' if !str.nil? and ($stdout.tty? or opts[:force])
    println_plain(str, opts)
  end

  private

  def self.println_plain(str, defaults={}, opts={})
    opts.merge!(defaults)
    chars = []
    str.chomp.chars.each_with_index do |c,i|
      chars << Paint[c, rainbow(opts[:freq], opts[:os]+i/opts[:spread])]
    end
    chars.join('')
  end
end