#! /bin/bash
docker run -d -it -e EULA=TRUE \ #Copy and paste properties here to change the server properties
-p 19132:19132/udp \
-v mc-bedrock-data:/data itzg/minecraft-bedrock-server \

#SERVER_NAME=[PLACEHOLDER]
#SERVER_PORT=[PLACEHOLDER]
#SERVER_PORT_V6=[PLACEHOLDER]
#GAMEMODE=[PLACEHOLDER]
#DIFFICULTY=[PLACEHOLDER]
#LEVEL_TYPE=[PLACEHOLDER]
#ALLOW_CHEATS=[PLACEHOLDER]
#MAX_PLAYERS=[PLACEHOLDER]
#ONLINE_MODE=[PLACEHOLDER]
#WHITE_LIST=[PLACEHOLDER]
#VIEW_DISTANCE=[PLACEHOLDER]
#TICK_DISTANCE=[PLACEHOLDER]
#PLAYER_IDLE_TIMEOUT=[PLACEHOLDER]
#MAX_THREADS=[PLACEHOLDER]
#LEVEL_NAME=[PLACEHOLDER]
#LEVEL_SEED=[PLACEHOLDER]
#DEFAULT_PLAYER_PERMISSION_LEVEL=[PLACEHOLDER]
#TEXTUREPACK_REQUIRED=[PLACEHOLDER]
#SERVER_AUTHORITATIVE_MOVEMENT=[PLACEHOLDER]
#PLAYER_MOVEMENT_SCORE_THRESHOLD=[PLACEHOLDER]
#PLAYER_MOVEMENT_DISTANCE_THRESHOLD=[PLACEHOLDER]
#PLAYER_MOVEMENT_DURATION_THRESHOLD_IN_MS=[PLACEHOLDER]
#CORRECT_PLAYER_MOVEMENT=[PLACEHOLDER]
