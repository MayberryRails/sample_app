Autotest.add_hook :initialize do |at|
  at.add_mapping(%r%^test/(functional|integration|performance3|unit)/.*rb$%) do |filename, _|
    filename
  end
end