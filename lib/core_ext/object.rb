class Object
  # An object is blank if it's false, empty, or a whitespace string. For example, "", " ", nil, [], and {} are blank.
  def blank?
    respond_to?(:empty?) ? empty? : !self
  end

  # An object is present if it's not blank.
  def present?
    !blank?
  end
end