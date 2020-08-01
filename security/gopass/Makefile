# $OpenBSD: Makefile,v 1.16 2020/08/01 14:43:32 abieber Exp $

COMMENT =	pass compatible password manager written in go

MODGO_MODNAME =	github.com/gopasspw/gopass
MODGO_VERSION =	v1.9.2
DISTNAME =	gopass-${MODGO_VERSION}

CATEGORIES =	security

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c pthread

MODULES =	lang/go
MODGO_TYPE =	bin
MODGO_LDFLAGS =	-X "main.version=${MODGO_VERSION}"

RUN_DEPENDS =	devel/git \
		security/gnupg2

# for tests; some still fail
PORTHOME =	${WRKDIR}

MODGO_MODFILES =	\
	github.com/cpuguy83/go-md2man/v2	 v2.0.0-20190314233015-f79a8a8ca69d \
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/golang/protobuf		 v1.4.0-rc.1 \
	github.com/golang/protobuf		 v1.4.0-rc.1.0.20200221234624-67d41d38c208 \
	github.com/golang/protobuf		 v1.4.0-rc.2 \
	github.com/golang/protobuf		 v1.4.0-rc.4.0.20200313231945-b860323f09d0 \
	github.com/google/go-cmp		 v0.3.0 \
	github.com/google/go-cmp		 v0.3.1 \
	github.com/kr/text			 v0.1.0 \
	github.com/lucasb-eyer/go-colorful	 v1.0.2 \
	github.com/mattn/go-colorable		 v0.1.4 \
	github.com/mattn/go-isatty		 v0.0.11 \
	github.com/mattn/go-isatty		 v0.0.8 \
	github.com/mattn/go-runewidth		 v0.0.4 \
	golang.org/x/crypto			 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto			 v0.0.0-20190701094942-4def268fd1a4 \
	golang.org/x/net			 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/sys			 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys			 v0.0.0-20190222072716-a9d3bda3a223 \
	golang.org/x/sys			 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys			 v0.0.0-20190626150813-e07cf5db2756 \
	golang.org/x/sys			 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/sys			 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys			 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/sys			 v0.0.0-20200323222414-85ca7c5b95cd \
	golang.org/x/text			 v0.3.0 \
	google.golang.org/protobuf		 v0.0.0-20200109180630-ec00e32a8dfd \
	google.golang.org/protobuf		 v0.0.0-20200221191635-4d8936d0db64 \
	google.golang.org/protobuf		 v0.0.0-20200228230310-ab0ca4ff8a60 \
	google.golang.org/protobuf		 v1.20.1-0.20200309200217-e05f789c0967 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2			 v2.2.2
MODGO_MODNAME =	github.com/gopasspw/gopass
MODGO_MODULES =	\
	github.com/!burnt!sushi/toml			 v0.3.1 \
	github.com/!d!a!t!a-!d!o!g/go-sqlmock		 v1.3.3 \
	github.com/!proton!mail/go-appdir		 v1.1.0 \
	github.com/alecthomas/binary			 v0.0.0-20190922233330-fb1b1d9c299c \
	github.com/atotto/clipboard			 v0.1.2 \
	github.com/blang/semver				 v0.0.0-20190414182527-1a9109f8c4a1 \
	github.com/cenkalti/backoff			 v2.2.1+incompatible \
	github.com/cpuguy83/go-md2man/v2		 v2.0.0 \
	github.com/creack/pty				 v1.1.9 \
	github.com/davecgh/go-spew			 v1.1.1 \
	github.com/dominikschulz/github-releases	 v0.0.2 \
	github.com/doronbehar/gocui			 v0.4.2 \
	github.com/doronbehar/termbox-go		 v0.0.0-20191006141301-8c9470559e05 \
	github.com/fatih/color				 v1.9.0 \
	github.com/gdamore/encoding			 v1.0.0 \
	github.com/gdamore/tcell			 v1.3.0 \
	github.com/godbus/dbus				 v0.0.0-20190623212516-8a1682060722 \
	github.com/gokyle/twofactor			 v1.0.1 \
	github.com/golang/protobuf			 v1.4.0 \
	github.com/google/go-cmp			 v0.4.0 \
	github.com/google/go-github			 v17.0.0+incompatible \
	github.com/google/go-querystring		 v1.0.0 \
	github.com/hashicorp/errwrap			 v1.0.0 \
	github.com/hashicorp/go-multierror		 v1.1.0 \
	github.com/hashicorp/golang-lru			 v0.5.4 \
	github.com/jsimonetti/pwscheme			 v0.0.0-20160922125227-76804708ecad \
	github.com/kballard/go-shellquote		 v0.0.0-20180428030007-95032a82bc51 \
	github.com/kr/pty				 v1.1.1 \
	github.com/kr/text				 v0.2.0 \
	github.com/lucasb-eyer/go-colorful		 v1.0.3 \
	github.com/martinhoefling/goxkcdpwgen		 v0.0.0-20190331205820-7dc3d102eca3 \
	github.com/mattn/go-colorable			 v0.1.6 \
	github.com/mattn/go-isatty			 v0.0.12 \
	github.com/mattn/go-runewidth			 v0.0.9 \
	github.com/mitchellh/go-homedir			 v1.1.0 \
	github.com/mitchellh/go-ps			 v1.0.0 \
	github.com/muesli/crunchy			 v0.4.0 \
	github.com/muesli/goprogressbar			 v0.0.0-20190807022807-e540249d2ac1 \
	github.com/niemeyer/pretty			 v0.0.0-20200227124842-a10e7caefd8e \
	github.com/pkg/errors				 v0.9.1 \
	github.com/pmezard/go-difflib			 v1.0.0 \
	github.com/russross/blackfriday/v2		 v2.0.1 \
	github.com/schollz/closestmatch			 v0.0.0-20190308193919-1fbe626be92e \
	github.com/shurcoo!l/sanitized_anchor_name	 v1.0.0 \
	github.com/skip2/go-qrcode			 v0.0.0-20191027152451-9434209cb086 \
	github.com/stretchr/objx			 v0.1.0 \
	github.com/stretchr/testify			 v1.5.1 \
	github.com/urfave/cli/v2			 v2.2.0 \
	github.com/xrash/smetrics			 v0.0.0-20170218160415-a3153f7040e9 \
	golang.org/x/crypto				 v0.0.0-20200423211502-4bdfaf469ed5 \
	golang.org/x/net				 v0.0.0-20200421231249-e086a090c8fd \
	golang.org/x/sys				 v0.0.0-20200420163511-1957bb5e6d1f \
	golang.org/x/text				 v0.3.2 \
	golang.org/x/tools				 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/xerrors				 v0.0.0-20191204190536-9bdfabe68543 \
	google.golang.org/protobuf			 v1.21.0 \
	gopkg.in/check.v1				 v1.0.0-20200227125254-8fa46927fb4f \
	gopkg.in/yaml.v2				 v2.2.8 \
	rsc.io/qr					 v0.2.0
.include <bsd.port.mk>
