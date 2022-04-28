# Icecast radio setup

Simple setup for Icecast streaming.

## Icecast streaming server

Install Icecast on a server.

## Producer setup

### Butt

Really simple client for icecast streams found at <https://danielnoethen.de/butt/>. Install and set server details to point at your Icecast server IP address. In audio settings make sure you are using aggregate audio device.

### Create aggregate audio device (Mac)

<https://support.apple.com/en-us/HT202000>. Combine all audio stream you want to stream into on audio device.

<!-- ### Optional: Loobback (MacOS) ($$$ version)

Trial version of Loopback can be found at <https://rogueamoeba.com/loopback/>. Trial not suitable for long-term streaming. -->

## Installation

-
    cp icecast-template.xml icecast.xml
- Modify passwords, users and hostnames in icecast.xml
- Build and deploy Icecast docker image
  - I personally use Docker swarm with `docker stack deploy -c docker-compose.yml icecast`
- Optional: setup DNS & HTTOS etc. for the server. I personally use <https://caddyserver.com/>
  - Caddy has some issues for sending stream. On my own setup I bypass Caddy and connect straight to the Icecast with IP address and port.
- Run producer setup
- Start streaming!
