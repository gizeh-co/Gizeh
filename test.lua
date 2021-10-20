local GizehTest = GizehTest or {}

GizehTest.Main = GizehTest.Main or {}
GizehTest.Main.Message = "ceci est un message test pour gizeh"

function FormatCode( lua, string ,args,code)
	
	lua = string.Replace(lua, "#STR", string)
  lua = string.Replace(lua, "#ARGS", args)
  lua = string.Replace(lua, "#CODE", code)
	return lua
end

GizehTest.Main.Function.Add = function(string,args,code)
	if string!="" and code!="" then
  		if args!="" then
    			local code = [[
    			#STR function(#ARG)
        			#CODE
    			end
     			]]
    			GizehTest.Main.Logs("Added Function",string,args,code)

    			code = FormatCode(code,string,args,code)
			return code
  		else
      			local code = [[
    			#STR function()
        			#CODE
    			end
     			]]
    			GizehTest.Main.Logs("Added Function",string,code)

    			code = FormatCode(code,string,code)
			return code
 		end
	else
		print("please specify name of function and code")
	end

end

GizehTest.Main.Function.Add("LaFonctionDeOuf","Argument","print(Argmuent")

--le reste des tests seront fait ici
