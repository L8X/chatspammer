-- Chat Spammer by Elvie#0001 and nul#3174 --

math.randomseed(tick())

task.wait(0.5)

if not game:IsLoaded() then
	game.Loaded:Wait()
end

task.spawn(function()
    pcall(function()
        if not getgenv().gethiddengui then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/L8X/gethiddengui/main/src.lua", false))()
        end
    end)
end)

task.spawn(function()
    pcall(function()
        if not getgenv().EXPRO_SECURITYHOOKS_LOADED then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/L8X/securityhooks/main/src.lua", false))()
        end
    end)
end)
	
		
local cloneref = cloneref or function(ref) 
	return ref
end
local rs = cloneref(game:GetService("ReplicatedStorage"))
local dcsce = rs:FindFirstChild("DefaultChatSystemChatEvents")
local smr =  dcsce:FindFirstChild("SayMessageRequest")
local cg = cloneref(game:GetService("CoreGui"))
local cgchild = cg:FindFirstChild("RobloxGui") or cg:FindFirstChildOfClass("ScreenGui") or cg:FindFirstChildOfClass("Folder")

local gui = cloneref(Instance.new("ScreenGui"))
gui.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
local frame = cloneref(Instance.new("Frame"))
frame.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
frame.Parent = gui
local open = cloneref(Instance.new("TextButton"))
open.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
open.Parent = gui
local bool = cloneref(Instance.new("BoolValue"))
bool.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
bool.Parent = frame
local button = cloneref(Instance.new("TextButton"))
button.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
button.Parent = frame
local name = cloneref(Instance.new("TextLabel"))
name.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
name.Parent = frame
local box = cloneref(Instance.new("TextBox"))
box.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
box.Parent = frame
local msg = cloneref(Instance.new("StringValue"))
msg.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
msg.Parent = frame
local exit = cloneref(Instance.new("TextButton"))
exit.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
exit.Parent = frame
local spamon = cloneref(Instance.new("TextButton"))
spamon.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
spamon.Parent = frame
local spamoff = cloneref(Instance.new("TextButton"))
spamoff.Name = tostring(math.random(1e9, 2e9) * math.random(1, 50))
spamoff.Parent = frame

frame.Position = UDim2.new(0.7, 7, 0, 3)
open.Position = UDim2.new(0, -100, 0.7, 0)
button.Position = UDim2.new(0, 170, 0.7, 13)
name.Position = UDim2.new(0, 0, 0, 0)
box.Position = UDim2.new(0, 0, 0, 45)
exit.Position = UDim2.new(0.8, 30, 0, 0)
spamon.Position = UDim2.new(0, 5, 0.7, 13)
spamoff.Position = UDim2.new(0, 245, 0.7, 13)

frame.Size = UDim2.new(0, 400, 0, 200)
open.Size = UDim2.new(0, 100, 0, 40)
button.Size = UDim2.new(0, 60, 0, 40)
name.Size = UDim2.new(0.8, 25, 0, 40)
box.Size = UDim2.new(1, 0, 0, 100)
exit.Size = UDim2.new(0, 50, 0, 43)
spamon.Size = UDim2.new(0, 150, 0, 40)
spamoff.Size = UDim2.new(0, 150, 0, 40)

frame.Active = true
frame.Draggable = true

frame.BackgroundColor3 = Color3.new(0, 0, 0)
open.BackgroundColor3 = Color3.new(255, 255, 0)
button.BackgroundColor3 = Color3.new(255, 255, 255)
name.BackgroundColor3 = Color3.new(255, 255, 255)
box.BackgroundColor3 = Color3.new(255, 255, 255)
exit.BackgroundColor3 = Color3.new(255, 0, 0)
spamon.BackgroundColor3 = Color3.new(255, 0, 0)
spamoff.BackgroundColor3 = Color3.new(255, 0, 0)

frame.BackgroundTransparency = 0.5
box.BackgroundTransparency = 0.5
button.BackgroundTransparency = 0.6
name.BackgroundTransparency = 1

open.Visible = false

open.TextScaled = true
exit.TextScaled = true
spamon.TextScaled = true
spamoff.TextScaled = true
box.TextScaled = true
button.TextScaled = true
name.TextScaled = true

box.ClearTextOnFocus = true
box.MultiLine = true

name.TextColor3 = Color3.new(255, 0, 0)

open.Text = "Open"
exit.Text = "Destroy"
spamoff.Text = "Off"
spamon.Text = "On"
box.Text = "Type message here..."
button.Text = "Close"
name.Text = "Elvie's Chat Spammer"

bool.Value = false
msg.Value = ""

if syn and type(syn) == "table" and syn.protect_gui and type(syn.protect_gui) == "function" and not gethui then
	syn.protect_gui(gui)
	for i, v in next, gui:GetDescendants() do
		syn.protect_gui(v)
	end
end

if protect_gui and type(protect_gui) == "function" and not gethui then
	protect_gui(gui)
	for i, v in next, gui:GetDescendants() do
		protect_gui(v)
	end
end

gui.Parent = gethiddengui and gethiddengui() or gethui and gethui() or cgchild or cg

spamonconnection = spamon.MouseButton1Down:Connect(function()
	bool.Value = true
	msg.Value = box.Text
	box.Text = "Success!"
	search.Text = ""
	task.wait(1)
	box.Text = "Type message here..."
end)

spamoffconnection = spamoff.MouseButton1Down:Connect(function()
	bool.Value = false
end)

exitconnection = exit.MouseButton1Down:Connect(function()
	frame:TweenPosition(UDim2.new(1, 0, 0, 3), "Out", "Quad", 1, true)
	task.wait(1)
	frame.Visible = false
	task.wait(.5)
	spamonconnection:Disconnect()
	spamoffconnection:Disconnect()
	buttonconnection:Disconnect()
	openconnection:Disconnect()
	pcall(task.cancel, thread)
	gui:Destroy()
	exitconnection:Disconnect()
end)

buttonconnection = button.MouseButton1Down:Connect(function()
	frame:TweenPosition(UDim2.new(1, 0, 0, 3), "Out", "Quad", 1, true)
	task.wait(1)
	open.Visible = true
	task.wait(.5)
	frame.Visible = false
	open:TweenPosition(UDim2.new(0, 5, 0.7, 0), "Out", "Bounce", 1, true)
end)

openconnection = open.MouseButton1Down:Connect(function()
	frame:TweenPosition(UDim2.new(1, 0, 0, 3), "Out", "Quad", 1, true)
	open:TweenPosition(UDim2.new(0, -100, 0.7, 0), "Out", "Quad", 1, true)
	task.wait(1)
	open.Visible = false
	task.wait(.5)
	frame.Visible = true
	frame:TweenPosition(UDim2.new(0.7 , 7, 0, 3), "Out", "Bounce", 1, true)
end)

thread = task.spawn(function()
	while true do
	    task.wait(4) -- Avoids getting ratelimited
		if bool.Value == true and dcsce and smr then
			-- Add MsgId to message to avoid Roblox bans for Spamming
		    smr:FireServer(tostring("[")..tostring("MsgId:")..tostring(" ")..tostring(math.random(1, 25) * math.random(1, 25))..tostring("]")..tostring(" ")..tostring(msg.Value), "All")
		end
	end
end)
