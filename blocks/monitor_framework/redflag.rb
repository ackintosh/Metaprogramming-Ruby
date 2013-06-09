# -*- encoding: utf-8 -*-

def event(name, &block)
  @events[name] = block
end

def setup(&block)
  @setups << block
end


Dir.glob('*events.rb').each do |file|
  @setups = []
  @events = {}
  load file
  @events.each_pair do |name, event|
    clean_room = Object.new
    @setups.each do |setup|
      clean_room.instance_eval &setup
    end
    puts "ALERT: #{name}" if clean_room.instance_eval &event
  end
end

