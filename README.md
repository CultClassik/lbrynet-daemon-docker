# lbrynet-daemon [![Build Status](https://travis-ci.org/CultClassik/lbrynet-daemon-docker.svg?branch=master)](https://travis-ci.org/CultClassik/lbrynet-daemon-docker)
[Image on Docker Hub](https://hub.docker.com/r/cultclassik/lbrynet-daemon/)

Dockerfile to build cultclassik/lbrynet-daemon to run a LBRY node / wallet.


## Pre-requisites

Requires a working installation of Docker CE or EE.

## Installation

docker build -t cultclassik/lbrynet-daemon .

## Usage

To persist node data including your wallet, map a volume to /root/.local/share/lbry.

docker run --name lbry-wallet \
  -p 4444:4444/udp \
  -p 5279:5279/tcp \
  -v /my/local/storage:/root/.local/share/lbry \
  cultclassik/lbrynet-daemon

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

TODO: Write history

## Credits

TODO: Write credits

## License

TODO: Write license