object @world

node(:stats) do |world|
  view = GetWorldView.run(world: world).result

  {
  	counts: view.counts,
  	dimensions: view.dimensions
  }
end