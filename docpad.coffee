# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	plugins:
    	cleanurls:
       		static: true

    collections:
	    posts: ->
	        @getCollection('documents').findAllLive({relativeDirPath: 'posts'}, [date: -1])

	environments:
	    development:
	        collections:
	            posts: ->
	                @getCollection('documents').findAllLive({relativeDirPath: {'$in' : ['posts', 'drafts']}}, [relativeDirPath: 1,  date: -1])
}

# Export the DocPad Configuration
module.exports = docpadConfig
