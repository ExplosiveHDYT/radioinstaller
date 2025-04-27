rednet.open("back")

-- Prompt the user to enter a channel to join
io.write("Enter a channel to join: ")
local recieveProtocol = read()

-- If the user doesn't enter anything, set the protocol to the default "availableChannels"
if recieveProtocol == "" then
    recieveProtocol = "availableChannels"
end


local senderID, recievedMessage = rednet.receive(recieveProtocol, 10)
local text = recievedMessage














local wordsToPrint = 10

local wordCount = 0

if recievedMessage then
    local trimmedText = text:match("^%s*(.-)%s*$")
    for word in string.gmatch(trimmedText, "%S+") do
        wordCount = wordCount + 1
        if wordCount % 5 == 0 then
            io.write(word)
            print("")
            read()
        else
            io.write(word)
            io.write(" ")
        end
    end
else
    print("timed out, try again")
end


rednet.close()
