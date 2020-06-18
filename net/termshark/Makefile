# $OpenBSD: Makefile,v 1.3 2020/06/18 10:15:42 sthen Exp $

# 1.0.0 fails on aarch64, golang.org/x/sys@v0.0.0-20190416152802-12500544f89f
# too old
ONLY_FOR_ARCHS = amd64 arm i386

COMMENT =	terminal UI for tshark, inspired by Wireshark

# portgen go doesn't cope with github.com/gcla/termshark/v2 yet
MODGO_MODNAME =	github.com/gcla/termshark
MODGO_VERSION =	v1.0.0

DISTNAME =	termshark-${MODGO_VERSION}
REVISION =	0

HOMEPAGE =	https://termshark.io

CATEGORIES =	net

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
RUN_DEPENDS =	net/wireshark,-text

MODGO_MODULES =	github.com/!burnt!sushi/toml				 v0.3.1 \
		github.com/!d!a!t!a-!d!o!g/go-sqlmock			 v1.3.3 \
		github.com/alecthomas/template				 v0.0.0-20160405071501-a0175ee3bccc \
		github.com/alecthomas/units				 v0.0.0-20151022065526-2efee857e7cf \
		github.com/armon/consul-api				 v0.0.0-20180202201655-eb2c6b5be1b6 \
		github.com/blang/semver					 v3.5.1+incompatible \
		github.com/coreos/etcd					 v3.3.10+incompatible \
		github.com/coreos/go-etcd				 v2.0.0+incompatible \
		github.com/coreos/go-semver				 v0.2.0 \
		github.com/davecgh/go-spew				 v1.1.1 \
		github.com/fsnotify/fsnotify				 v1.4.7 \
		github.com/gcla/deep					 v1.0.2 \
		github.com/gcla/gowid					 v1.0.0 \
		github.com/gdamore/encoding				 v1.0.0 \
		github.com/gdamore/tcell				 v1.1.2-0.20190412054914-dcf1bb30770e \
		github.com/go-test/deep					 v1.0.1 \
		github.com/guptarohit/asciigraph			 v0.4.1 \
		github.com/hashicorp/golang-lru				 v0.5.1 \
		github.com/hashicorp/hcl				 v1.0.0 \
		github.com/jessevdk/go-flags				 v1.4.0 \
		github.com/konsorten/go-windows-terminal-sequences	 v1.0.2 \
		github.com/kr/pty					 v1.1.4 \
		github.com/lucasb-eyer/go-colorful			 v1.0.2 \
		github.com/magiconair/properties			 v1.8.0 \
		github.com/mattn/go-isatty				 v0.0.7 \
		github.com/mattn/go-runewidth				 v0.0.4 \
		github.com/mitchellh/mapstructure			 v1.1.2 \
		github.com/pelletier/go-toml				 v1.2.0 \
		github.com/pkg/errors					 v0.8.1 \
		github.com/pmezard/go-difflib				 v1.0.0 \
		github.com/rakyll/statik				 v0.1.6 \
		github.com/shibukawa/configdir				 v0.0.0-20170330084843-e180dbdc8da0 \
		github.com/sirupsen/logrus				 v1.4.1 \
		github.com/spf13/afero					 v1.1.2 \
		github.com/spf13/cast					 v1.3.0 \
		github.com/spf13/jwalterweatherman			 v1.0.0 \
		github.com/spf13/pflag					 v1.0.3 \
		github.com/spf13/viper					 v1.3.2 \
		github.com/stretchr/objx				 v0.1.1 \
		github.com/stretchr/testify				 v1.3.0 \
		github.com/ugorji/go/codec				 v0.0.0-20181204163529-d75b2dcb6bc8 \
		github.com/xordataexchange/crypt			 v0.0.3-0.20170626215501-b2862e3d0a77 \
		golang.org/x/crypto					 v0.0.0-20190325154230-a5d413f7728c \
		golang.org/x/sys					 v0.0.0-20190416152802-12500544f89f \
		golang.org/x/text					 v0.3.1-0.20180807135948-17ff2d5776d2 \
		gopkg.in/alecthomas/kingpin.v2				 v2.2.6 \
		gopkg.in/check.v1					 v0.0.0-20161208181325-20d25e280405 \
		gopkg.in/fsnotify.v1					 v1.4.7 \
		gopkg.in/yaml.v2					 v2.2.2
MODGO_MODFILES =	github.com/!burnt!sushi/toml				 v0.3.1 \
			github.com/!d!a!t!a-!d!o!g/go-sqlmock			 v1.3.3 \
			github.com/alecthomas/template				 v0.0.0-20160405071501-a0175ee3bccc \
			github.com/alecthomas/units				 v0.0.0-20151022065526-2efee857e7cf \
			github.com/armon/consul-api				 v0.0.0-20180202201655-eb2c6b5be1b6 \
			github.com/blang/semver					 v3.5.1+incompatible \
			github.com/coreos/etcd					 v3.3.10+incompatible \
			github.com/coreos/go-etcd				 v2.0.0+incompatible \
			github.com/coreos/go-semver				 v0.2.0 \
			github.com/davecgh/go-spew				 v1.1.0 \
			github.com/davecgh/go-spew				 v1.1.1 \
			github.com/fsnotify/fsnotify				 v1.4.7 \
			github.com/gcla/deep					 v1.0.2 \
			github.com/gcla/gowid					 v1.0.0 \
			github.com/gdamore/encoding				 v1.0.0 \
			github.com/gdamore/tcell				 v1.1.2-0.20190412054914-dcf1bb30770e \
			github.com/go-test/deep					 v1.0.1 \
			github.com/guptarohit/asciigraph			 v0.4.1 \
			github.com/hashicorp/golang-lru				 v0.5.1 \
			github.com/hashicorp/hcl				 v1.0.0 \
			github.com/jessevdk/go-flags				 v1.4.0 \
			github.com/konsorten/go-windows-terminal-sequences	 v1.0.1 \
			github.com/konsorten/go-windows-terminal-sequences	 v1.0.2 \
			github.com/kr/pty					 v1.1.4 \
			github.com/lucasb-eyer/go-colorful			 v1.0.2 \
			github.com/magiconair/properties			 v1.8.0 \
			github.com/mattn/go-isatty				 v0.0.7 \
			github.com/mattn/go-runewidth				 v0.0.4 \
			github.com/mitchellh/mapstructure			 v1.1.2 \
			github.com/pelletier/go-toml				 v1.2.0 \
			github.com/pkg/errors					 v0.8.1 \
			github.com/pmezard/go-difflib				 v1.0.0 \
			github.com/rakyll/statik				 v0.1.6 \
			github.com/shibukawa/configdir				 v0.0.0-20170330084843-e180dbdc8da0 \
			github.com/sirupsen/logrus				 v1.4.0 \
			github.com/sirupsen/logrus				 v1.4.1 \
			github.com/spf13/afero					 v1.1.2 \
			github.com/spf13/cast					 v1.3.0 \
			github.com/spf13/jwalterweatherman			 v1.0.0 \
			github.com/spf13/pflag					 v1.0.3 \
			github.com/spf13/viper					 v1.3.2 \
			github.com/stretchr/objx				 v0.1.0 \
			github.com/stretchr/objx				 v0.1.1 \
			github.com/stretchr/testify				 v1.2.2 \
			github.com/stretchr/testify				 v1.3.0 \
			github.com/ugorji/go/codec				 v0.0.0-20181204163529-d75b2dcb6bc8 \
			github.com/xordataexchange/crypt			 v0.0.3-0.20170626215501-b2862e3d0a77 \
			golang.org/x/crypto					 v0.0.0-20180904163835-0709b304e793 \
			golang.org/x/crypto					 v0.0.0-20181203042331-505ab145d0a9 \
			golang.org/x/crypto					 v0.0.0-20190325154230-a5d413f7728c \
			golang.org/x/sys					 v0.0.0-20180905080454-ebe1bf3edb33 \
			golang.org/x/sys					 v0.0.0-20181205085412-a5c9d58dba9a \
			golang.org/x/sys					 v0.0.0-20190215142949-d0b11bdaac8a \
			golang.org/x/sys					 v0.0.0-20190222072716-a9d3bda3a223 \
			golang.org/x/sys					 v0.0.0-20190322080309-f49334f85ddc \
			golang.org/x/sys					 v0.0.0-20190416152802-12500544f89f \
			golang.org/x/text					 v0.3.0 \
			golang.org/x/text					 v0.3.1-0.20180807135948-17ff2d5776d2 \
			gopkg.in/alecthomas/kingpin.v2				 v2.2.6 \
			gopkg.in/check.v1					 v0.0.0-20161208181325-20d25e280405 \
			gopkg.in/fsnotify.v1					 v1.4.7 \
			gopkg.in/yaml.v2					 v2.2.2

.include <bsd.port.mk>
