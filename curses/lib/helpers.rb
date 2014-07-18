def init_world!
  world = CreateDemoWorld.run(world: { height: 40, width: 30 }).result
  StartWorld.run(world: world)

  [world, world.height, world.width]
end

def world_window(h, w)
  Window.new(h + 2, w + 2, (lines - h) / 2, (cols - w) / 2).tap do |win|
    win.box('|', '-')
  end
end

def map_char(building_or_nil)
  if building_or_nil.is_a? NilClass
    ['.', false]
  elsif building_or_nil.is_a? Mine
    ['M', true]
  else
    ['?', true]
  end
end


trap('INT') do
  close_screen
  exit(0)
end
