--this lib is in test for Gizeh
local GizehTest = GizehTest or {}

GizehTest.Main = GizehTest.Main or {}
GizehTest.Main.Message = "ceci est un message test pour gizeh"

function FormatCode( lua, string ,args,code)
	
	lua = string.Replace(lua, "#STR", string)
  lua = string.Replace(lua, "#ARGS", args)
  lua = string.Replace(lua, "#CODING", coding)
	return lua
end

GizehTest.Main.Function.Add = function(string,args,coding)
	if string!="" and code!="" then
  		if args!="" then
    			local code = [[
    			#STR function(#ARG)
        			#CODING
    			end
     			]]
    			GizehTest.Main.Logs("Added Function",string,args,coding)

    			code = FormatCode(code,string,args,coding)
			return code
  		else
      			local code = [[
    			#STR function()
        			#CODING
    			end
     			]]
    			GizehTest.Main.Logs("Added Function",string,coding)

    			code = FormatCode(code,string,coding)
			return code
 		end
	else
		print("please specify name of function and code")
	end

end



GizehTest.Main.Function.Add("LaFonctionDeOuf","Argument","print(Argmuent")--this function for test

--le reste des tests seront fait ici
