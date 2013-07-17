require 'pusher'
Pusher.app_id = '49628'
Pusher.key = 'f326f98a15a0919b0937'
Pusher.secret = 'ef766ed2d312e59d9f32'  

class PlayController < ApplicationController

	def index
	    Pusher['my-channel'].trigger('my-event', {:message => 'hello world'})


	end
end
