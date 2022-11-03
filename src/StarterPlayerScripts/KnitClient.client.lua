local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages

local Knit = require(Packages.Knit)
local Loader = require(Packages.Loader)

Knit.AddControllersDeep(script.Parent.Controllers)
Knit.Start():andThen(function()
	Loader.LoadChildren(script.Parent.Components)
	print("📘 • Knit Client - Done")
end):catch(warn):await()
