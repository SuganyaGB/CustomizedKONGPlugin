local CustomHandler = {
  VERSION  = "1.0.0",
  PRIORITY = 10,
}

local kong = kong

---Core Tech
function CustomHandler:access(config)
        kong.log("This step execute before setting header") 
        kong.log(config.key_name)  --"print log with key name"
        kong.log(config.key_value) -- "print log with key value" 

       -- Sets a header in the request to the Service with the given value. 
       kong.service.request.set_header(config.key_name, config.key_value)
        kong.log("This step execute after setting header") 
end

return CustomHandler
