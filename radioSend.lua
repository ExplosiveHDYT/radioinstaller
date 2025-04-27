rednet.open("top")
print("broadcasting . . .")

while true do
    -- Broadcasting Available Channels
    local broadcastMessage = "Available Channels: -availableChannels (default) -waypoints -buildMaterial"
    local broadcastProtocol = "availableChannels"
    rednet.broadcast(broadcastMessage, broadcastProtocol)
    sleep(0.1)
    
    -- Broadcasting Waypoints Channel
    broadcastMessage = "Waypoints Channel: Desert (-820, 86, -1076); End Portal (1730, 62, -1124); Nether Fortress (470, 60, 277); Bastion (359, 67, 121); Underground City (192, -17, -504)"
    broadcastProtocol = "waypoints"
    rednet.broadcast(broadcastMessage, broadcastProtocol)
    sleep(0.1)

    -- Broadcasting Building Material Channel
    broadcastMessage = "Building Material for House Channel: Building Materials Needed, " ..
                   "Acacia Trapdoor: x1, Andesite 4S, Andesite Stairs 1S, Azalea Leaves, 1S, " ..
                   "Barrel x19, Blue Brick Slab 4S, Blue Brick Stairs 28S, Blue Bricks 5S, " ..
                   "Bookshelf 1S, Brass Casing x12, Brass Door x12, Brass Window x12, " ..
                   "Chain x4, Cherry Leaves x8, Chest x7, Chisel Bookshelf x6, Chisel Stone Brick x2, " ..
                   "Cogwheel x5, Copycat Panel x5, Dark Oak Trapdoor x5, Decorated Pot x10, " ..
                   "Elevator Pulley x1, Encased Chain Drive x16, Flower Pot x4, Flowering Azalea Leaves 1S, " ..
                   "Industrial Catwalk Railing Iron x12, Industrial Iron Window Pane 2S, Jukebox x1, " ..
                   "Ladder 2S, Lantern 2S, Large cogwheel x5, Lectern x2, Lightning Rod x16, " ..
                   "Loom x1, Mechanical Belt x2, Oak door x10, Oak Log x4, Oak Planks, 80S, Oak Stairs x36, " ..
                   "Oak Trapdoor 2S, Oak Window Pane 6S, Orange Glass x1, Polish Andesite 28S, Blackstone Button x11, " ..
                   "Polished Cut Andesite wall x8, Poppy x8, Red Carpet 3S, redstone contact x3, " ..
                   "Redstone Lamp x18, Redstone Link x25, Shaft x9, Smooth Stone Slab x4, Spruce Button x32, " ..
                   "Spruce door x5, Spruce Fence x150, Spruce fence gate x10, Spruce Planks 18S, spruce sign x6, " ..
                   "Spruce Slab 11S, Spruce Stairs 33S, Spruce Trapdoor 15S, Stone Brick Stairs 1S, Stone Brick Wall 5S, " ..
                   "Stone Bricks 13S, Stripped Oak Log 36S, Stripped spruce log 28S, Torch 1S, Water Wheel x8"

    broadcastProtocol = "buildMaterial"
    rednet.broadcast(broadcastMessage, broadcastProtocol)
    sleep(0.1)
end

rednet.close()
