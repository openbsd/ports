# $OpenBSD: Makefile,v 1.6 2021/03/10 22:08:18 sthen Exp $

COMMENT=	terminal UI for tshark, inspired by Wireshark

MODGO_MODNAME=	github.com/gcla/termshark/v2
MODGO_VERSION=	v2.2.0

DISTNAME=	termshark-${MODGO_VERSION}

HOMEPAGE=	https://termshark.io/

CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
RUN_DEPENDS=	net/wireshark,-text

MODGO_MODULES=	\
	github.com/!burnt!sushi/toml  v0.3.1 \
	github.com/adam-hanna/array!operations  v0.2.5 \
	github.com/alecthomas/template  v0.0.0-20160405071501-a0175ee3bccc \
	github.com/alecthomas/units  v0.0.0-20151022065526-2efee857e7cf \
	github.com/antchfx/xmlquery  v1.0.0 \
	github.com/antchfx/xpath  v1.0.0 \
	github.com/armon/consul-api  v0.0.0-20180202201655-eb2c6b5be1b6 \
	github.com/blang/semver  v3.5.1+incompatible \
	github.com/coreos/etcd  v3.3.10+incompatible \
	github.com/coreos/go-etcd  v2.0.0+incompatible \
	github.com/coreos/go-semver  v0.2.0 \
	github.com/davecgh/go-spew  v1.1.1 \
	github.com/fsnotify/fsnotify  v1.4.7 \
	github.com/gcla/deep  v1.0.2 \
	github.com/gcla/gowid  v1.1.1-0.20201029034135-cc3f828591d3 \
	github.com/gcla/tail  v1.0.1-0.20190505190527-650e90873359 \
	github.com/gcla/tcell  v1.1.2-0.20200927150251-decc2045f510 \
	github.com/gcla/term  v0.0.0-20191015020247-31cba2f9f402 \
	github.com/gdamore/encoding  v1.0.0 \
	github.com/gdamore/tcell  v1.3.1-0.20200115030318-bff4943f9a29 \
	github.com/go-test/deep  v1.0.2 \
	github.com/guptarohit/asciigraph  v0.4.1 \
	github.com/hashicorp/golang-lru  v0.5.3 \
	github.com/hashicorp/hcl  v1.0.0 \
	github.com/jessevdk/go-flags  v1.4.0 \
	github.com/kballard/go-shellquote  v0.0.0-20180428030007-95032a82bc51 \
	github.com/konsorten/go-windows-terminal-sequences  v1.0.2 \
	github.com/kr/pretty  v0.1.0 \
	github.com/kr/pty  v1.1.4 \
	github.com/kr/text  v0.1.0 \
	github.com/lucasb-eyer/go-colorful  v1.0.3 \
	github.com/magiconair/properties  v1.8.0 \
	github.com/mattn/go-isatty  v0.0.9 \
	github.com/mattn/go-runewidth  v0.0.7 \
	github.com/mitchellh/mapstructure  v1.1.2 \
	github.com/mreiferson/go-snappystream  v0.2.3 \
	github.com/pelletier/go-toml  v1.2.0 \
	github.com/pkg/errors  v0.8.1 \
	github.com/pkg/term  v0.0.0-20190109203006-aa71e9d9e942 \
	github.com/pmezard/go-difflib  v1.0.0 \
	github.com/rakyll/statik  v0.1.6 \
	github.com/shibukawa/configdir  v0.0.0-20170330084843-e180dbdc8da0 \
	github.com/sirupsen/logrus  v1.4.2 \
	github.com/spf13/afero  v1.1.2 \
	github.com/spf13/cast  v1.3.0 \
	github.com/spf13/jwalterweatherman  v1.0.0 \
	github.com/spf13/pflag  v1.0.3 \
	github.com/spf13/viper  v1.3.2 \
	github.com/stretchr/objx  v0.1.1 \
	github.com/stretchr/testify  v1.4.0 \
	github.com/tevino/abool  v0.0.0-20170917061928-9b9efcf221b5 \
	github.com/ugorji/go/codec  v0.0.0-20181204163529-d75b2dcb6bc8 \
	github.com/xordataexchange/crypt  v0.0.3-0.20170626215501-b2862e3d0a77 \
	golang.org/x/crypto  v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/net  v0.0.0-20190620200207-3b0461eec859 \
	golang.org/x/sys  v0.0.0-20191010194322-b09406accb47 \
	golang.org/x/text  v0.3.2 \
	golang.org/x/tools  v0.0.0-20180917221912-90fa682c2a6e \
	gopkg.in/alecthomas/kingpin.v2  v2.2.6 \
	gopkg.in/check.v1  v1.0.0-20180628173108-788fd7840127 \
	gopkg.in/fsnotify/fsnotify.v1  v1.4.7 \
	gopkg.in/tomb.v1  v1.0.0-20141024135613-dd632973f1e7 \
	gopkg.in/yaml.v2  v2.2.2

MODGO_MODFILES= \
	github.com/davecgh/go-spew  v1.1.0 \
	github.com/go-test/deep  v1.0.1 \
	github.com/hashicorp/golang-lru  v0.5.1 \
	github.com/konsorten/go-windows-terminal-sequences  v1.0.1 \
	github.com/kr/pty  v1.1.1 \
	github.com/stretchr/objx  v0.1.0 \
	github.com/stretchr/testify  v1.2.2 \
	github.com/stretchr/testify  v1.3.0 \
	golang.org/x/crypto  v0.0.0-20181203042331-505ab145d0a9 \
	golang.org/x/sys  v0.0.0-20181205085412-a5c9d58dba9a \
	golang.org/x/sys  v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys  v0.0.0-20190422165155-953cdadca894 \
	golang.org/x/sys  v0.0.0-20190626150813-e07cf5db2756 \
	golang.org/x/sys  v0.0.0-20190813064441-fde4db37ae7a \
	golang.org/x/text  v0.3.0 \
	gopkg.in/check.v1  v0.0.0-20161208181325-20d25e280405

# *shrug* builds ok with "go get" but ports build picks up something broken
do-build:
	-cd ${WRKSRC} && ${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/...
	rm -f ${WRKDIR}/go/pkg/mod/github.com/gcla/term@v0.0.0-20191015020247-31cba2f9f402/termios/pty_openbsd.go
	cd ${WRKSRC} && ${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/...

.include <bsd.port.mk>
