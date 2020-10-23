# $OpenBSD: Makefile,v 1.3 2020/10/23 13:38:33 abieber Exp $

COMMENT =	terminal Matrix client written in Go

MODGO_MODNAME =	maunium.net/go/gomuks
MODGO_VERSION =	v0.2.1

DISTNAME =	gomuks-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/tulir/gomuks

# AGPL-3.0
PERMIT_PACKAGE =	yes

COMPILER=base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} c olm

LIB_DEPENDS =		devel/olm

MAKE_ENV +=		CGO_CFLAGS=-I${LOCALBASE}/include \
			CGO_LDFLAGS=-L${LOCALBASE}/lib

MODULES =		lang/go

MODGO_MODULES =	\
	github.com/!puerkito!bio/goquery		 v1.5.1 \
	github.com/alecthomas/assert			 v0.0.0-20170929043011-405dbfeb8e38 \
	github.com/alecthomas/chroma			 v0.8.0 \
	github.com/alecthomas/colour			 v0.0.0-20160524082231-60882d9e2721 \
	github.com/alecthomas/kong			 v0.2.4 \
	github.com/alecthomas/repr			 v0.0.0-20180818092828-117648cd9897 \
	github.com/andybalholm/cascadia			 v1.1.0 \
	github.com/danwakefield/fnmatch			 v0.0.0-20160403171240-cbb64ac3d964 \
	github.com/davecgh/go-spew			 v1.1.1 \
	github.com/disintegration/imaging		 v1.6.2 \
	github.com/dlclark/regexp2			 v1.2.0 \
	github.com/gabriel-vasile/mimetype		 v1.1.1 \
	github.com/gdamore/encoding			 v1.0.0 \
	github.com/gorilla/mux				 v1.7.4 \
	github.com/kyokomi/emoji			 v2.2.2+incompatible \
	github.com/lib/pq				 v1.7.0 \
	github.com/lithammer/fuzzysearch		 v1.1.0 \
	github.com/lucasb-eyer/go-colorful		 v1.0.3 \
	github.com/mattn/go-colorable			 v0.1.6 \
	github.com/mattn/go-isatty			 v0.0.12 \
	github.com/mattn/go-runewidth			 v0.0.9 \
	github.com/mattn/go-sqlite3			 v1.14.0 \
	github.com/nu7hatch/gouuid			 v0.0.0-20131221200532-179d4d0c4d8d \
	github.com/petermattis/goid			 v0.0.0-20180202154549-b0b1615b78e5 \
	github.com/pkg/errors				 v0.9.1 \
	github.com/pmezard/go-difflib			 v1.0.0 \
	github.com/rivo/uniseg				 v0.1.0 \
	github.com/russross/blackfriday/v2		 v2.0.1 \
	github.com/sasha-s/go-deadlock			 v0.2.0 \
	github.com/sergi/go-diff			 v1.0.0 \
	github.com/shurcoo!l/sanitized_anchor_name	 v1.0.0 \
	github.com/stretchr/objx			 v0.1.0 \
	github.com/stretchr/testify			 v1.6.1 \
	github.com/tidwall/gjson			 v1.6.0 \
	github.com/tidwall/match			 v1.0.1 \
	github.com/tidwall/pretty			 v1.0.1 \
	github.com/tidwall/sjson			 v1.1.1 \
	github.com/zyedidia/clipboard			 v0.0.0-20200421031010-7c45b8673834 \
	github.com/zyedidia/poller			 v1.0.1 \
	go.etcd.io/bbolt				 v1.3.4 \
	golang.org/x/crypto				 v0.0.0-20200622213623-75b288015ac9 \
	golang.org/x/image				 v0.0.0-20200430140353-33d19683fad8 \
	golang.org/x/net				 v0.0.0-20200822124328-c89045814202 \
	golang.org/x/sys				 v0.0.0-20200501145240-bc7a7d42d5c3 \
	golang.org/x/text				 v0.3.2 \
	golang.org/x/tools				 v0.0.0-20180917221912-90fa682c2a6e \
	gopkg.in/check.v1				 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/toast.v1				 v1.0.0-20180812000517-0a84660828b2 \
	gopkg.in/vansante/go-ffprobe.v2			 v2.0.2 \
	gopkg.in/yaml.v2				 v2.3.0 \
	gopkg.in/yaml.v3				 v3.0.0-20200313102051-9f266ea9e77c \
	maunium.net/go/maulogger/v2			 v2.1.1 \
	maunium.net/go/mautrix				 v0.7.6 \
	maunium.net/go/mauview				 v0.1.2 \
	maunium.net/go/tcell				 v0.2.0

MODGO_MODFILES =	\
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/pkg/errors		 v0.8.1 \
	github.com/stretchr/testify	 v1.2.2 \
	github.com/stretchr/testify	 v1.3.0 \
	github.com/tidwall/pretty	 v1.0.0 \
	golang.org/x/crypto		 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/image		 v0.0.0-20191009234506-e7c1f5e7dbb8 \
	golang.org/x/net		 v0.0.0-20180218175443-cbe0f9307d01 \
	golang.org/x/net		 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net		 v0.0.0-20200202094626-16171245cfb2 \
	golang.org/x/net		 v0.0.0-20200324143707-d3edc9973b7e \
	golang.org/x/net		 v0.0.0-20200602114024-627f9648deb9 \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys		 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys		 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys		 v0.0.0-20200202164722-d101bd2416d5 \
	golang.org/x/sys		 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/sys		 v0.0.0-20200323222414-85ca7c5b95cd \
	golang.org/x/sys		 v0.0.0-20200413165638-669c56c373c4 \
	golang.org/x/text		 v0.3.0

.include <bsd.port.mk>
