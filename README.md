# HTTP Proxy through OpenVPN Client on Docker
Docker image to run HTTP Proxy through OpenVPN client, based on : https://github.com/jonohill/docker-openvpn-proxy

## HOW TO
After cloning the repo modify `docker-compose.yml` file

Below environment variables need to be passed by `docker-compose.yml`:

* `OPENVPN_USERNAME`, `OPENVPN_PASSWORD` provided from your VPN provider
* the vpn provider's configuration is passed as `openvpn.ovpn` file.

Then container launch would look like:

``./dockerstart.sh``

The container terminate would look like:

``./dockerstop.sh``

## HTTP Proxy
Then you can use the http proxy in your web browser.

Example for puppeteer:

``puppeteer.launch({ args: ['--proxy-server=localhost:8040'] })``
