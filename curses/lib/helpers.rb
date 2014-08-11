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
    ['M', color_pair(COLOR_BLUE)]
  elsif location.truck
    ['T', color_pair(COLOR_GREEN)]
  elsif location.depot
    ['D', color_pair(COLOR_BLUE)]
  else
    ['.', color_pair(EMPTY)]
  end
end

def draw_screen(win, result)
  width, height = result.dimensions

  (0...width).each do |x|
    (0...height).each do |y|
      char, color = map_char(result.map[y, x])

      win.setpos(y + 1, x + 1)
      win.attron(color | A_NORMAL) { win.addstr(char) }
    end
  end
end

trap('INT') do
  close_screen
  exit(0)
end
