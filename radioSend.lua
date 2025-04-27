rednet.open("top")
print("broadcasting . . .")
while true do
    broadcastMessage = "Available Channels: -availableChannels (default) -waypoints -buildMaterial"
    broadcastProtocol = "availableChannels"
    rednet.broadcast(broadcastMessage, broadcastProtocol)
    sleep(0.1)
    broadcastMessage = "Waypoints Channel: Desert (-820, 86, -1076); End Portal (1730, 62, -1124); Nether Fortress (470, 60, 277); Bastion (359, 67, 121); Underground City (192, -17, -504)"
    broadcastProtocol = "waypoints"
    rednet.broadcast(broadcastMessage, broadcastProtocol)
    sleep(0.1)
    broadcastMessage = "Building Material for House Channel:"
    broadcastProtocol = "buildMaterial"
    rednet.broadcast(broadcastMessage, broadcastProtocol)
    sleep(0.1)
end
rednet.close()
