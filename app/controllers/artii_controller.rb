class ArtiiController < ApplicationController
    def index
    end
    def views
        require 'artii'
        @letter=params[:letter]
        @option=params[:option]
        a = Artii::Base.new(font: @option)
        @art=a.asciify(@letter)
    end
end
