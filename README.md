# spawn

This datapack allows you to set a spawn point, teleport to it (from any dimension), and add radial protection.

&nbsp;

## Commands

| Command                           | Description                    |
| --------------------------------- | ------------------------------ |
| /trigger spawn                    | Teleport to the spawn location |
| /function spawn:set               | Sets the spawn location        |
| /function spawn:protect           | Outputs the protection options |
| /function spawn:scripts/uninstall | Uninstall the datapack         |

&nbsp;

## Troubleshoot

**`/trigger spawn` says 'You cannot trigger this objective yet'**

You'll need to set your spawn before being able to use `/trigger spawn`. :)

&nbsp;

## Todo

- [x] load
  - [x] init
- [x] spawn:set
  - [x] spawn:scripts/getcoords
  - [x] Prevent setting spawn outside of overworld
- [x] spawn:scripts/teleport
  - [x] Multidimensional Teleport
- [ ] spawn:protect