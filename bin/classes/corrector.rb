class Corrector
  def correct_name(name)
    name.length > 10 ? name = name[0..10] : name
    name.capitalize!
  end
end
