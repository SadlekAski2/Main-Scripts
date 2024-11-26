function TeleportToModel(Model, Offset)
    LocalPlayer.Character.PrimaryPart.CanCollide = false
    local newpos = Model.PrimaryPart.CFrame * Offset
    
    local cFrame = CFrame.lookAt(newpos, Model.PrimaryPart.Position)

    LocalPlayer.Character:PivotTo(cFrame)
end

function TeleportBehindModel(Model)
    local prim = Model.PrimaryPart or Model.HumanoidRootPart
    TeleportToModel(Model, Vector3.new(0, 0, (prim.Size.X + prim.Size.Z)*1.5))
end
function TeleportInfrontOfModel(Model)
    local prim = Model.PrimaryPart or Model.HumanoidRootPart
    TeleportToModel(Model, Vector3.new(0, 0, -(prim.Size.X + prim.Size.Z)*1.5))
end

function TeleportUnderModel(Model)
    local prim = Model.PrimaryPart
    TeleportToModel(Model, Vector3.new(0, -(prim.Size.Y + prim.Size.X + prim.Size.Z)*1.5, 0))
end
function TeleportAboveModel(Model)
    local prim = Model.PrimaryPart
    TeleportToModel(Model, Vector3.new(0, (prim.Size.Y + prim.Size.X + prim.Size.Z)*1.5, 0))
end

function TeleportToCFrame(Pos)
    LocalPlayer.Character:PivotTo(Pos)
end
