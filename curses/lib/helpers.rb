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

def thing_at(location)
  location.building
end

def map_char(location)
  if location.mine
    ['M', true]
  elsif location.truck
    ['T', true]
  elsif location.depot
    ['D', true]
  else
    ['.', false]
  end
end

def draw_screen(win, result)
  width, height = result.dimensions

  (0...width).each do |x|
    (0...height).each do |y|
      char, c = map_char(result.map[y, x])
      color   = c ? color_pair(COLOR_BLUE) : color_pair(EMPTY)

      win.setpos(y + 1, x + 1)
      win.attron(color | A_NORMAL) { win.addstr(char) }
    end
  end
end

trap('INT') do
  close_screen
  exit(0)
end
