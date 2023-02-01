# pokecurl

# How to use it

Insert the pokemon of your selection

```bash
bash pokecurl.sh <your-favorite-pokemon>
```

## Examples

### Ditto
```bash
bash pokecurl.sh ditto
```
> OUTPUT: Id=132, name=ditto, weight=40, height=3, order=214

### Bulbasaur
```bash
bash pokecurl.sh bulbasaur
```
> OUTPUT: Id=1, name=bulbasaur, weight=69, height=7, order=1

## Error handling

### Not passing pokemon
```bash
bash pokecurl.sh
```
> OUTPUT: Please make sure you are entering a pokemon.
### Pokemon does not exist
```bash
bash pokecurl.sh agumon
```
> OUTPUT: agumon does not exist bro :(. Check if you are entering it's correct name.