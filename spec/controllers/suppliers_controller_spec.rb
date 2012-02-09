require 'spec_helper'

describe SuppliersController do

  describe "GET 'show'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
