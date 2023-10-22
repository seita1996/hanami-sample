# frozen_string_literal: true

module Myapp
  module Actions
    module Books
      class Show < Myapp::Action
        include Deps["persistence.rom"]

        params do
          required(:id).value(:integer)
        end

        def handle(request, response)
          book = rom.relations[:books].by_pk(
            request.params[:id]
          ).one!

          response.format = :json
          response.body = book.to_json
        end
      end
    end
  end
end
