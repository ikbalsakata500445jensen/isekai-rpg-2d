# AETHERIA REBORN: The Otherworld Contract

**Play it right now: https://isekai-rpg-2d.pages.dev**

A top-down 2D action RPG. Yuna, an ordinary schoolgirl, gets hit by Truck-kun
and wakes up in Aetheria with a health bar over her head. Goddess Aqua hands
her a contract: three shattered relic fragments, three realms, one Demon Lord
who used to be Aqua's first hero. Sign it or stay dead.

Play it, then check how it was made. That part is the real story.

## How this game was made

One prompt. That is the whole story.

This entire game came out of a **single-shot prompt** to
[Vanexa Agent](https://github.com/ikbalsakata500445jensen/vanexa-agent),
running **Muse Spark 1.3 contributor**. No follow-up prompts, no fix loops,
no human code edits. One prompt went in, and out came:

* a full **Godot 4 project** (`scenes/`, `scripts/`, `shaders/`, `data/`)
* a **single-file HTML5 canvas port** (`deploy/`, 422 lines, zero dependencies)
* three realms, eleven enemy types, two phased bosses, guild quests,
  typewriter dialogue with portraits, procedural WebAudio music and SFX,
  touch controls for mobile, HUD, minimap, win and death screens

I am human and humans make mistakes, so I will not claim every pixel is
perfect. There are rough edges. They are single-shot rough edges, kept as is,
because polishing them would break the point: this is what one good prompt
can do now. If you find something broken, open an issue and tell me straight.

## Play it

Easiest way, the web build:

```bash
cd deploy
python3 -m http.server 8000
```

Then open `http://localhost:8000` in your browser and press Enter.

Or open Godot 4, import the project at the repo root, and press play.

## Controls

| Key | Action |
|---|---|
| WASD / arrows | Move |
| J / Space | Slash |
| K | Aqua magic |
| Shift | Dash |
| E | Talk, read, enter portals |
| Q | Drink potion |
| M | Mute |
| Touch | Joystick plus ATK, MAG, POT and E buttons on mobile |

## What is inside

```text
deploy/    The web build. One HTML file plus curated art. Vercel ready.
scenes/    Godot 4 scenes. Three levels, actors, UI, VFX.
scripts/   GDScript. Player, portal, chest, and five enemy brains.
shaders/   Hit flash and dissolve burn effects.
data/      Dialogue trees, item catalog, enemy scaling tables.
audio/     Theme and SFX for the Godot build.
```

The full downloaded asset packs (gigabytes of them) are not in this repo.
`deploy/assets/` holds only the sprites the game actually loads.

## License, and please read this part

**The code is MIT.** That is the most permissive license I could pick, and I
picked it on purpose. Fork it, learn from it, ship your own game with it,
sell that game, never tell me. All I ask is you keep the license notice.
If a single-shot prompt built this, imagine what you can build on top of it.

**The art is NOT MIT.** Every sprite comes from free packs by
[Cooking Game / CraftPix](https://craftpix.net). Their rule is simple and fair:
you may use the art inside your game, you may NOT resell or repackage the PNGs
themselves. So the code is yours, the pixels are borrowed. The full pack list
with names is in `deploy/assets/CREDITS.md`. Respect it and CraftPix keeps
releasing free art for the rest of us.

## Credits

* Built in one shot by [Vanexa Agent](https://github.com/ikbalsakata500445jensen/vanexa-agent)
  with Muse Spark 1.3 contributor
* Art: CraftPix free packs (see `deploy/assets/CREDITS.md`)
* Audio on web: procedural WebAudio, no files needed
* Idea, prompt, and stubbornness: Ikbal Fadilah
