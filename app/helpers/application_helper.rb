module ApplicationHelper
  def absolute_javascript_url(source)
    uri = URI.parse(request.host_with_port)
    uri.merge(javascript_path(source))
  end
end
