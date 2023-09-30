# frozen_string_literal: true

module Myapp
  module Actions
    module Home
      class Show < Myapp::Action
        def handle(*, response)
          response.body = "Welcome to Bookshelf"
        end
      end
    end
  end
end
