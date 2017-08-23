#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# http://brewformulas.org/
# http://brew.sh/

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils # https://www.gnu.org/software/coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils # https://joeyh.name/code/moreutils/
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils # https://www.gnu.org/software/findutils/
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names # https://www.gnu.org/software/sed/
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions # https://github.com/Homebrew/homebrew-versions
brew install bash-completion2 # https://github.com/Homebrew/homebrew-versions/blob/master/bash-completion2.rb

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install nano

# Install mas
brew install mas # https://github.com/mas-cli/mas

# Install font tools.
brew tap bramstein/webfonttools # https://github.com/bramstein/homebrew-webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install dns2tcp # http://www.hsc.fr/ressources/outils/dns2tcp/index.html.en
brew install fcrackzip # http://oldhome.schmorp.de/marc/fcrackzip.html
brew install foremost # http://foremost.sourceforge.net/
brew install hashpump # https://github.com/bwall/HashPump
brew install john # http://www.openwall.com/john/
brew install knock # http://www.zeroflux.org/projects/knock
brew install netpbm # http://netpbm.sourceforge.net/
brew install nmap # https://nmap.org/
brew install socat # http://www.desst-unreach.org/socat/
brew install sqlmap # http://sqlmap.org/
brew install tcpflow # https://github.com/simsong/tcpflow
brew install tcpreplay # http://tcpreplay.appneta.com/
brew install tcptrace # http://www.tcptrace.org/
brew install ucspi-tcp # `tcpserver` etc. https://cr.yp.to/ucspi-tcp.html

# Install Tools.
brew install ngrep # http://ngrep.sourceforge.net/
brew install ack # http://beyondgrep.com/
brew install dark-mode # c
brew install git # https://git-scm.com/
brew install git-lfs # https://github.com/github/git-lfs
brew install bfg # https://rtyley.github.io/bfg-repo-cleaner/s
brew install imagemagick --with-webp # https://www.imagemagick.org/
brew install lynx # http://lynx.invisible-island.net/
brew install xz # http://tukaani.org/xz/
brew install p7zip # http://p7zip.sourceforge.net/
brew install pigz # http://www.zlib.net/pigz/
brew install pv # https://www.ivarch.com/programs/pv.shtml
brew install rename # http://plasmasturm.org/code/rename/
brew install speedtest_cli # https://github.com/sivel/speedtest-cli
brew install ssh-copy-id # https://www.openssh.com/
brew install testssl # https://testssl.sh/
brew install tree # http://mama.indstate.edu/users/ice/tree/
brew install vbindiff # https://www.cjmweb.net/vbindiff/
brew install pngcheck # http://www.libpng.org/pub/png/apps/pngcheck.html
brew install webkit2png # http://www.paulhammond.org/webkit2png/
brew install zopfli # https://github.com/google/zopfli

# Install PHP https://github.com/Homebrew/homebrew-php
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew unlink php56
brew install homebrew/php/php71
brew install homebrew/php/php71-imagick

# Install WordPress Tools
brew install homebrew/php/wp-cli

# Install MariaDB
brew install mariadb

# Remove outdated versions from the cellar.
brew cleanup
