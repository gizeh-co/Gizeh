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
local code = [[
    #STR function(#ARG)
        #CODE
    end
]]

GizehTest.Main.Logs("Added Function",string,args,code)

code = FormatCode(code,string,args,code)
end

GizehTest.Main.Function.Add("LaFonctionDeOuf","Argument","print(Argmuent..'c\'est ouf')")

--le reste des tests seront fait ici
