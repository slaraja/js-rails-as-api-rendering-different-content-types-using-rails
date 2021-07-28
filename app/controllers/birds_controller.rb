# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
#   end
# end 

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
#   end
# end 

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: ['As','well','as','arrays']
#   end
# end 

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: @birds
#   end
# end 

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
#   end
# end 

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    #this renders the same thing as above
    #to_json is not necessary because rails does it automatically
  end
end 
