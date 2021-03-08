# $OpenBSD: Makefile,v 1.2 2021/03/08 13:59:25 sthen Exp $

COMMENT =	experimental fully end-to-end encrypted IPv6 network

MODGO_MODNAME =	github.com/yggdrasil-network/yggdrasil-go
MODGO_VERSION =	v0.3.15

DISTNAME =	yggdrasil-go-${MODGO_VERSION}
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://yggdrasil-network.github.io/

# LGPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB += c pthread

# DefaultIfName should be the interface name not the device node.
# Patching is messed up with go.port.mk so done as a subst instead.
post-extract:
	sed -i \
	    -e s,/dev/tun0,tun0, \
	    -e s,/etc/,${SYSCONFDIR}/, \
	    ${WRKSRC}/src/defaults/defaults_openbsd.go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/yggdrasil/
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/yggdrasil/
	${PREFIX}/bin/yggdrasil -genconf > \
	    ${PREFIX}/share/examples/yggdrasil/yggdrasil.conf
	mv ${PREFIX}/bin/{,yggdrasil-}genkeys

MODGO_MODULES =	\
	github.com/!arceliar/phony			 v0.0.0-20191006174943-d0c68492aca0 \
	github.com/!vivid!cortex/ewma			 v1.1.1 \
	github.com/cheggaaa/pb/v3			 v3.0.4 \
	github.com/fatih/color				 v1.7.0 \
	github.com/gologme/log				 v0.0.0-20181207131047-4e5d8ccb38e8 \
	github.com/hashicorp/go-syslog			 v1.0.0 \
	github.com/hjson/hjson-go			 v3.0.2-0.20200316202735-d5d0e8b0617d+incompatible \
	github.com/kardianos/minwinsvc			 v0.0.0-20151122163309-cad6b2b879b0 \
	github.com/lxn/walk				 v0.0.0-20191128110447-55ccb3a9f5c1 \
	github.com/lxn/win				 v0.0.0-20191128105842-2da648fda5b4 \
	github.com/mattn/go-colorable			 v0.1.2 \
	github.com/mattn/go-isatty			 v0.0.10 \
	github.com/mattn/go-runewidth			 v0.0.7 \
	github.com/mitchellh/mapstructure		 v1.1.2 \
	github.com/vishvananda/netlink			 v1.0.0 \
	github.com/vishvananda/netns			 v0.0.0-20190625233234-7109fa855b0f \
	github.com/yggdrasil-network/yggdrasil-extras	 v0.0.0-20200525205615-6c8a4a2e8855 \
	golang.org/x/crypto				 v0.0.0-20200221231518-2aa609cf4a9d \
	golang.org/x/net				 v0.0.0-20200301022130-244492dfa37a \
	golang.org/x/sys				 v0.0.0-20200302150141-5c8b2ff67527 \
	golang.org/x/text				 v0.3.3-0.20191230102452-929e72ca90de \
	golang.org/x/tools				 v0.0.0-20180917221912-90fa682c2a6e \
	golang.zx2c4.com/wireguard			 v0.0.20200320 \
	golang.zx2c4.com/wireguard/windows		 v0.1.0
MODGO_MODFILES =	\
	github.com/mattn/go-isatty	 v0.0.8 \
	golang.org/x/crypto		 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto		 v0.0.0-20191002192127-34f69633bfdc \
	golang.org/x/net		 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net		 v0.0.0-20191003171128-d98b1b443823 \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys		 v0.0.0-20190222072716-a9d3bda3a223 \
	golang.org/x/sys		 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys		 v0.0.0-20190904154756-749cb33beabd \
	golang.org/x/sys		 v0.0.0-20191003212358-c178f38b412c \
	golang.org/x/sys		 v0.0.0-20191008105621-543471e840be \
	golang.org/x/sys		 v0.0.0-20191128015809-6d18c012aee9 \
	golang.org/x/sys		 v0.0.0-20200301040627-c5d0d7b4ec88 \
	golang.org/x/text		 v0.3.0 \
	golang.org/x/text		 v0.3.2 \
	golang.zx2c4.com/wireguard	 v0.0.20200122-0.20200214175355-9cbcff10dd3e

.include <bsd.port.mk>
