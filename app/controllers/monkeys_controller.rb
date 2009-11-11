class MonkeysController < InheritedResources::Base
  respond_to :fxml, :html, :xml, :json
end
