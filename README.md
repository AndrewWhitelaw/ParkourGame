# Parkour Platformer

A five-level 2D parkour platformer built in **GameMaker Studio** with **GameMaker Language (GML)**. Jump between platforms, dodge incoming projectiles and reach the flag to finish each level.

## Gameplay

- Reach the **flag** at the end of each level to complete it
- **Dodge projectiles** fired at the player
- **Don't fall**: falling off the level resets the attempt
- Complete all **5 levels** to finish the game

## Controls

| Key | Action |
| --- | ------ |
| `W` `A` `S` `D` | Move |
| `Space` | Jump |

## Features

- 5 levels of increasing difficulty
- Platformer movement and jumping
- Projectile hazards the player must avoid
- Fall detection and restart
- Goal flag that completes the level

## Tech Stack

| Technology | Purpose |
| ---------- | ------- |
| GameMaker Studio | Game engine |
| GameMaker Language (GML) | Programming language |
| Git / GitHub | Version control |

## Running the Game

**Requirements:** GameMaker Studio, Windows

```bash
git clone https://github.com/AndrewWhitelaw/ParkourGame.git
```

1. Open `ParkourGame.yyp` in GameMaker Studio
2. Press **Run** (F5)

<!-- BEST OPTION: build an executable, upload it under GitHub "Releases", and add:
**Just want to play?** Download the latest build from the [Releases](../../releases) page. -->

## Project Structure

```
objects/   Game objects (player, projectiles, flag, etc.)
rooms/     The 5 levels
scripts/   Shared GML scripts
sprites/   Sprite assets
```

## What I Built and Learned

This was my first project in GameMaker, made to learn the engine before starting my final-year dissertation, [A Room Full of Eyes](https://github.com/AndrewWhitelaw/DissertationProject).

- Learned GameMaker's object and event system (Create, Step, Draw, Collision events)
- Built player movement, jumping and collision handling
- Implemented projectile hazards and level completion logic
- Practised using Git and GitHub throughout development

## Future Improvements

- More levels and enemy types
- Audio and sound effects
- Checkpoints
- Timer and best-time tracking

## Author

**Andrew Whitelaw**: [GitHub](https://github.com/AndrewWhitelaw) | [LinkedIn](https://www.linkedin.com/in/andrew-whitelaw-706718403)
