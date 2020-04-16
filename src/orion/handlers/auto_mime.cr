# :nodoc:
class Orion::Handlers::AutoMime
  include HTTP::Handler
  include MIMEHelper

  def call(cxt : HTTP::Server::Context)
    if (mime_type = type_from_path?(cxt.request))
      cxt.request.headers["Accept"] ||= mime_type
    end
    cxt.response.headers["Content-Type"] ||= mime_type
    call_next(cxt)
  end
end
