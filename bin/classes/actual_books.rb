class ActualBook
  attr_accessor :title, :author, :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end
end
