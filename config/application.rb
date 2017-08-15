require 'trails'
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module Quotly
    class Application < Trails::Application
    end
end
