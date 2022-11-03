local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages

local Knit = require(Packages.Knit)
local Loader = require(Packages.Loader)

Knit.AddServicesDeep(script.Parent.Services)
Knit.Start():andThen(function()
	Loader.LoadChildren(script.Parent.Components)
	print("📗 • Knit Server - Done")
end):catch(warn):await()
