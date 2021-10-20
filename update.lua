local GizehVersion = GizehVersion or {}

GizehVersion.LoaderVersion=0--this variable will be overwrite by the loader this value is 1521
GizehVersion.Version=""--this variable will be overwrite by the loader this value is 0.0.1
GizehVersion.Check=false
GizehVersion.MessageSucess="Votre Gizeh Est A Jour"
GizehVersion.MessageError="Votre Gizeh N'est Pas A Jour Viens Sur Le Discord"
GizehVersion.Discord=""--this variable will be overwrite by the loader


if GizehVersion.Check==false then
    if GizehVersion.Version == "0.0.1" then
        print(GizehVersion.MessageSucess)
        GizehVersion.Check=true --this variable will be overwrite
    else
        print(GizehVersion.MessageError.." "..GizehVersion.Discord)
        GizehVersion.Check=false --this variable will be overwrite
    end
end
