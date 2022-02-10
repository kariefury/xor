# xor
Xor is irreversible or is it.

Build the dockerfile
```
docker builder build -t ngspice-container .
```

```
docker run --net=host -it --rm --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v $PDK_ROOT:$PDK_ROOT -e PDK_ROOT=$PDK_ROOT ngspice-container
```
