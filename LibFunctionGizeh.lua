--this lib is in test for Gizeh
local GizehTest = GizehTest or {}

GizehTest.Main = GizehTest.Main or {}
GizehTest.Main.Message = "ceci est un message test pour gizeh"

local Lvar = ""
local FNvar = ""
local FCvar = ""

GizehTest.ForatCode = function( lua, string ,args,code)
	if lua!="" then
		if string!="" then
			lua = string.Replace(lua, "#STR", string)
		elseif args!="" then
  			lua = string.Replace(lua, "#ARGS", args)
		elseif code!="" then
 			lua = string.Replace(lua, "#CODING", coding)
		end
		return lua
	end
end

GizehTest.Main.Logs = function(logs,function_name,function_content)
	print("Gizeh Function Lib Logs :\n")
	if logs!="" and function_name!="" and function_content!="" then
		print("[+] Gizeh Success "..logs.." Name Of Function Is "..function_name.." Content Of This Function Is "..function_content)
	else
		if logs=="" then
			Lvar = tostring(nil)
		else
			Lvar = logs
		end 
		if function_name=="" then
			FNvar = tostring(nil)
		else
			FNvar = function_name
		end 
		if function_content=="" then
			FCvar = tostring(nil)
		else
			FCvar = function_content
		end
		print("[-] Gizeh Error "..Lvar.." Name Of Function Is "..FNvar.." Content Of This Function Is "..FCvar)
	end
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

    			code = GizehTest.ForatCode(code,string,args,coding)
			return code
  		else
      			local code = [[
    			#STR function()
        			#CODING
    			end
     			]]
    			GizehTest.Main.Logs("Added Function",string,coding)

    			code = GizehTest.ForatCode(code,string,coding)
			return code
 		end
	else
		print("please specify name of function and code")
	end

end



GizehTest.Main.Function.Add("LaFonctionDeOuf","Argument","print(Argmuent")--this function for test

--le reste des tests seront fait ici
