# mansion-regen
Minecraft datapack: Mansions that can regenerate

## How to use:
* Drop the datapack into your world's datapacks folder (`.minecraft/saves/<world>/datapacks/` for singleplayer).  
* Type `/reload` or restart your world to enable the datapack.  

This datapack can automatically regenerate mansions in the world that you specify. This datapack is designed with multiplayer survival servers in mind.

### To define a mansion: (requires op permissions)
* Go to where you want the entrance of a regenerating mansion
* If replacing an original mansion, stand on top of the left cobblestone block with the torch on top.
  * Otherwise, stand on where you want that cobblestone block to be.
* Run `/function mansion:config` and click `[Add]`
* The mansion will be defined and will be capable of regenerating.
####
* A few blocks will be highlighted showing where the doorway will be. If you placed the mansion in the wrong place, simply undefine it and try again.
* It will also start a 60s cooldown to prevent it from immediately generating from your character's presence.
* You can add as many mansions as you like and they will act independently of another.

### To remove/undefine a mansion: (requires op permissions)
* Make sure the mansion is loaded in view
* Run `/function mansion:config` and click `[Remove]`
* The nearest mansion entrance will be highlighted and will ask for confirmation.
* Click `[Confirm deletion]`
The mansion will be undefined and will no longer generate. It will also lose any player data associated with it.

### Generating a mansion:
* A player can regenerate a mansion so long as the following conditions are met.
  * There are no other players inside the mansion (to prevent accidental deaths)
  * The mansion is not under cooldown (60 seconds since being defined or since the last regeneration)
  * The player has not hosted the mansion more than 2 times (by default)
    * Configured by "HostLimit" option
  * It has been more than 720 hours (30 days) since the last time the player has regenerated this mansion (by default)
    * Configured by "PlayerCooldown" option
####
* Hosts and guests
  * If the player meets all these conditions, they are the mansion's "host" and they will be responsible for the mansion generation. Their player cooldown for that mansion will increase as configured and they will be closer to reaching their host limit for that mansion.
  * If other players are tagging along with the host, they are known as "guests" and the generation will not be counted as theirs for player cooldown or host limits for that mansion.
####
* If you have op permissions, you can also force a mansion to generate using `/function mansion:config`. This will ignore the normal conditions required for a mansion to generate.
  * `[Generate as Host]` will generate the mansion as if you were its host. If you have hosted the mansion normally before (i.e. you have data with the mansion), it will increase your cooldown and host count.
  * `[Generate as Guest]` will generate the mansion as if you were a guest. It will not increase your cooldown or host count.

## Options
Settings can be changed using the `MansionConfig` scoreboard
* HostLimit: The number of times a player can "host" the same mansion. Must be a non-negative integer. Defaults to 2.
* PlayerCooldown: The number of hours before a player can "host" the same mansion again. Must be a non-negative integer. Defaults to 720.

Once a player has hosted every mansion in the world so far, they will be given a hidden internal advancement.
That advancement can run a function of your choosing if you'd like to provide a reward for players that complete this challenge.
By default it runs `mansion:househunters`, which is intentionally empty for server admins to modify.
