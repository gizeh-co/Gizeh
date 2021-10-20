local GizehTest = GizehTest or {}

GizehTest.Main = GizehTest.Main or {}
GizehTest.Main.Message = "ceci est un message test pour gizeh"

function FormatCode( lua, string ,args)
	
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
  		else
      			local code = [[
    			#STR function()
        			#CODE
    			end
     			]]
    			GizehTest.Main.Logs("Added Function",string,code)

    			code = FormatCode(code,string,code)
 		end
	end

end

GizehTest.Main.Function.Add("LaFonctionDeOuf","Argument","print(Argmuent..'c\'est ouf')")

--le reste des tests seront fait ici
