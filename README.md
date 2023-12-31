# Minecraft Java Server Setup
Run your Minecraft Java server easily with Docker.

## Prerequisites
Ensure you have Docker and the Docker Compose plugin installed. If you're on Ubuntu, you can follow this [guide](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-install-Docker-and-docker-compose-on-Ubuntu).

## Setting up the Server

1. **Download this repo**
    ```
    git clone https://github.com/shellburn-net/minecraft.git
    cd minecraft
    ```

2. **Determine Server Data Location**

    Choose a permanent location for your Minecraft server files. For example: /home/foobar/minecraft.

3. **Start the Server**

    There are two ways to set the server directory:

- Using an environment variable:
```
DATA_DIR=/home/foobar/minecraft ./start
```

- Passing it as an argument: 
```
./start /home/foobar/minecraft
```

4. **Configuration**

You can modify the default Minecraft version and adjust the JVM's RAM allocation in the `init` file.

When a new Minecraft version is available, download and rename it to `minecraft_server.<version>.jar`, then move it into the `mc` directory
(or just `git pull`, haha).

## Useful Commands

Attach to Server Console:
```
docker attach minecraft
```
To detach from the server, press the CTRL-p CTRL-q key sequence. **Avoid pressing CTRL-c as this will stop the server!**

Follow Server Logs:

```
docker logs -f minecraft
```

Happy mining and crafting! 🪓🔨🎮

