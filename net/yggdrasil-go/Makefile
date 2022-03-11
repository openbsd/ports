COMMENT =	experimental fully end-to-end encrypted IPv6 network

MODGO_MODNAME =	github.com/yggdrasil-network/yggdrasil-go
MODGO_VERSION =	v0.4.0

DISTNAME =	yggdrasil-go-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://yggdrasil-network.github.io/

# LGPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB += c pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/yggdrasil/
	${PREFIX}/bin/yggdrasil -genconf > \
	    ${PREFIX}/share/examples/yggdrasil/yggdrasil.conf
	mv ${PREFIX}/bin/{,yggdrasil-}genkeys

MODGO_MODULES =	\
	github.com/!arceliar/ironwood		 v0.0.0-20210619124114-6ad55cae5031 \
	github.com/!arceliar/phony		 v0.0.0-20210209235338-dde1a8dca979 \
	github.com/!vivid!cortex/ewma		 v1.2.0 \
	github.com/cheggaaa/pb/v3		 v3.0.8 \
	github.com/fatih/color			 v1.12.0 \
	github.com/gologme/log			 v1.2.0 \
	github.com/hashicorp/go-syslog		 v1.0.0 \
	github.com/hjson/hjson-go		 v3.1.0+incompatible \
	github.com/kardianos/minwinsvc		 v1.0.0 \
	github.com/lxn/walk			 v0.0.0-20210112085537-c389da54e794 \
	github.com/lxn/win			 v0.0.0-20210218163916-a377121e959e \
	github.com/mattn/go-colorable		 v0.1.8 \
	github.com/mattn/go-isatty		 v0.0.13 \
	github.com/mattn/go-runewidth		 v0.0.13 \
	github.com/mitchellh/mapstructure	 v1.4.1 \
	github.com/rivo/uniseg			 v0.2.0 \
	github.com/vishvananda/netlink		 v1.1.0 \
	github.com/vishvananda/netns		 v0.0.0-20210104183010-2eb08e3e575f \
	golang.org/x/crypto			 v0.0.0-20210513164829-c07d793c2f9a \
	golang.org/x/net			 v0.0.0-20210610132358-84b48f89b13b \
	golang.org/x/sys			 v0.0.0-20210611083646-a4fc73990273 \
	golang.org/x/term			 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text			 v0.3.7-0.20210503195748-5c7c50ebbd4f \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	golang.zx2c4.com/wireguard		 v0.0.0-20210604143328-f9b48a961cd2 \
	golang.zx2c4.com/wireguard/windows	 v0.3.14
MODGO_MODFILES =	\
	github.com/!vivid!cortex/ewma	 v1.1.1 \
	github.com/fatih/color		 v1.10.0 \
	github.com/mattn/go-isatty	 v0.0.12 \
	github.com/mattn/go-runewidth	 v0.0.12 \
	github.com/rivo/uniseg		 v0.1.0 \
	github.com/vishvananda/netns	 v0.0.0-20191106174202-0a2b9b5464df \
	golang.org/x/crypto		 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto		 v0.0.0-20210220033148-5ea612d1eb83 \
	golang.org/x/crypto		 v0.0.0-20210421170649-83a5a9bb288b \
	golang.org/x/crypto		 v0.0.0-20210506145944-38f3c27a63bf \
	golang.org/x/net		 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net		 v0.0.0-20210226172049-e18ecbb05110 \
	golang.org/x/net		 v0.0.0-20210510120150-4163338589ed \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys		 v0.0.0-20190606203320-7fc4e5ec1444 \
	golang.org/x/sys		 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/sys		 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys		 v0.0.0-20200217220822-9197077df867 \
	golang.org/x/sys		 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/sys		 v0.0.0-20200602225109-6fdc65e7d980 \
	golang.org/x/sys		 v0.0.0-20201018230417-eeed37f84f13 \
	golang.org/x/sys		 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys		 v0.0.0-20210309040221-94ec62e08169 \
	golang.org/x/sys		 v0.0.0-20210403161142-5e06dd20ab57 \
	golang.org/x/sys		 v0.0.0-20210423082822-04245dca01da \
	golang.org/x/sys		 v0.0.0-20210510120138-977fb7262007 \
	golang.org/x/term		 v0.0.0-20201117132131-f5c789dd3221 \
	golang.org/x/text		 v0.3.0 \
	golang.org/x/text		 v0.3.3 \
	golang.org/x/text		 v0.3.6 \
	golang.zx2c4.com/wireguard	 v0.0.0-20210510202332-9844c74f67ec

.include <bsd.port.mk>
