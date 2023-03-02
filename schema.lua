local typedefs = require "kong.db.schema.typedefs"


return {
  name = "addheaderkeyvaluer-custom-plugin",
  fields = {
    { 
	consumer = typedefs.no_consumer 
    },
    { 
	protocols = typedefs.protocols_http 
    },
    { 
	config = 
	{
        type = "record",
        fields = {
             { 
              key_name = {
            		  type = "string",
             		  required = true,
             		  default = { "api-token" },
         		 }, 
	     },
             { 
              key_value = {
            		  type = "string",
             		  required = true,
             		  default = { "dfb7ebbe4b2235682548ba91bf75b9150be8e9483e38e627e5462fd28ac1c7e916f10bef381a421aeb6efeeb1d0bcbe3b57da0e68a7604f397d4859214525efd" },
         		 }, 
	     },
             { 
		key_in_header = 
			 { 
			 type = "boolean", 
			 required = true, 
			 default = true
			 }, 
	     },
	   },
        },
    }, 
   },
  },
}