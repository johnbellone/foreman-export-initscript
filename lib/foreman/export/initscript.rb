require "erb"
require "foreman/export"

class Foreman::Export::Initscript < Foreman::Export::Base

  def export
    super
    name = "initscript/master.erb"

    path = export_template(name)
    write_template(name, path, binding)
    chmod(755, name)
   end

end

