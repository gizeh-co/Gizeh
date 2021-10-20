local GizehVersion = GizehVersion or {}

GizehVersion.Version=""
GizehVersion.Check=false
GizehVersion.Message="Votre Gizeh Est A Jour"
GizehVersion.MessageError="Votre Gizeh N'est Pas A Jour Viens Sur Le Discord"
GizehVersion.Discord=""


if GizehVersion.Version == "0.0.2" then
    print(GizehVersion.Message)
else
    print(GizehVersion.MessageError.." "..GizehVersion.Discord)
end
