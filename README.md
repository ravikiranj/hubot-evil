# hubot-evil

hubot's js eval implementation

See [`src/evil.coffee`](src/evil.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-evil --save`

Then add **hubot-evil** to your `external-scripts.json`:

```json
[
  "hubot-evil"
]
```

## Sample Interaction

```
user1>> hubot evil 2+2
hubot>> Command = 2+2
hubot>> 4
```
