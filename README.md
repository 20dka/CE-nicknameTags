# CE-nicknameTags
 

### A CobaltEssentials extension to provide CE group nametags on BeamMP Servers

For example if you're the owner, your nametag will have an [Owner] prefix for others

## Installation:

#### 1. Drag the Client and Server folders into your `.../Resources/` folder

#### 2. Add an entry to turn it on in:
`.../Resources/Server/CobaltEssentials/LoadExtensions.cfg`

 ```cfg
# Add your new extensions here as a key/value pair
# The first one is the name in the lua enviroment
# The second value is the file path to the main lua from CobaltEssentials/extensions

exampleExtension = "exampleExtension"
nicknameTags = "nicknameTags"
```

#### 3. Restart your server to apply changes.
