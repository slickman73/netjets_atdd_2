require 'watir-webdriver'
require 'page-object'

Before do
  begin
    @browser = Watir::Browser.new :chrome
  rescue => e
    warn e
  end
end

After do
  @browser.close
end