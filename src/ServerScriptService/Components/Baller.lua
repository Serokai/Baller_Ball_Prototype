local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Packages = ReplicatedStorage.Packages
local Component = require(Packages.Component)

local Baller = Component.new({
	Tag = "Baller",
})

function Baller:Construct()
	print("Baller Constructed")
end

function Baller:Start()
    print("Baller Started")
end

function Baller:Stop()
	print("Baller Stopped")
end

return Baller
