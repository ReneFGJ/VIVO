class Event
  attr_reader :path
  attr_reader :line_number
  attr_reader :line
  attr_reader :string
  attr_reader :is_localname
  
  # ------------------------------------------------------------------------------------
  private
  # ------------------------------------------------------------------------------------

  # ------------------------------------------------------------------------------------
  public
  # ------------------------------------------------------------------------------------

  def initialize(path, line_number, line, string)
    @path = path
    @line_number = line_number
    @line = line
    @string = string
    @is_localname = string[0] == ?:
  end
  
  def to_s()
    "#{@path} \n   #{@line_number} #{@line} \n   #{@string} #{@is_localname ? "Localname" : "URI"}"
  end
end