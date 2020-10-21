apt-get update
apt-get install -y curl git

useradd -m user
su user

# install go
VERSION='1.14'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

INSTALLED_GO_VERSION=$(go version)
echo "Go version ${INSTALLED_GO_VERSION} is installed"

# install gopls, dlv, hey
echo "Getting development tools"
go get -u golang.org/x/tools/gopls
go get -u github.com/go-delve/delve/cmd/dlv
go get -u github.com/rakyll/hey
