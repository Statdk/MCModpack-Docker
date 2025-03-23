# MC Modpack Docker Compose

This is a little guide for deploying [ServerPackCreator](https://github.com/Griefed/ServerPackCreator) exports under a docker compose environment.

I made this because I host some small-scale servers running modpacks, so I thought I'd share my process for hosting them on my machines.

# Guide

## Prerequisites

This guide is assuming the following things:
- Your deployment target is a linux machine
- You have a recent docker installation on that machine

## 1 Build your server

### 1.1 Acquire SeverPackCreator 

Once you've installed your target modpack with your instance manager of choice, you'll want to grab yourself a copy of server pack creator from the [GitHub repo's releases page](https://github.com/Griefed/ServerPackCreator/releases/latest). I'd recommend you use the GUI installer if you're unfamiliar with the tool, but the standalone versions work fine if you have java 21 installed.

### 1.2 Export a server pack

The tool comes with a step-by-step guide on how to use it, which should tell you all you need to know. Additional documentation can be accessed through the about menu at the top of the screen.

For most modpacks, it should be as easy as pointing the modpack directory at, well, your modpack's root directory. Some might require you to manually add server-files if the tool is unable to detect them automatically. If this happens, make sure to include the mods and configuration directories that come with your modpack.

## 2 Prep for deployment

### 2.1 Upload your files

### 2.2 Configuration Changes

### 2.2.1 Verify java version

### 2.2.2 Disable wait for user

### 2.2.3 something I forgot

## 3 Deployment

Some docker compose commands for reference:

```bash
# From the same directory as docker-compose.yml...
# Start the service detached
docker compose up -d

# Stop the service
docker compose stop

# Attach to the running container
docker compose attach minecraft
# Use "CTRL+P CTRL+Q" to detach without stopping

# Live view of the container logs
docker compose logs -f
# Use "CTRL+C" to quit
```

If you make changes to the Dockerfile, consider using the `--build` option

