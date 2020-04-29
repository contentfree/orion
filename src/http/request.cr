class HTTP::Request
  # :nodoc:
  setter path_params : Hash(String, String)?
  property format : String = ""
  property base_path : String = "/"
  property action : Orion::Action?

  # Returns the list of path params set by an Orion route.
  def path_params
    @path_params ||= {} of String => String
  end
end
