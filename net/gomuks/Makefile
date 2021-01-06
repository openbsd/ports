# $OpenBSD: Makefile,v 1.4 2021/01/06 00:11:38 abieber Exp $

COMMENT =	terminal Matrix client written in Go

MODGO_MODNAME =	maunium.net/go/gomuks
MODGO_VERSION =	v0.2.2

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
	github.com/aead/siphash				 v1.0.1 \
	github.com/alecthomas/assert			 v0.0.0-20170929043011-405dbfeb8e38 \
	github.com/alecthomas/chroma			 v0.8.1 \
	github.com/alecthomas/colour			 v0.0.0-20160524082231-60882d9e2721 \
	github.com/alecthomas/kong			 v0.2.4 \
	github.com/alecthomas/repr			 v0.0.0-20180818092828-117648cd9897 \
	github.com/andybalholm/cascadia			 v1.1.0 \
	github.com/btcsuite/btcd			 v0.20.1-beta \
	github.com/btcsuite/btclog			 v0.0.0-20170628155309-84c8d2346e9f \
	github.com/btcsuite/btcutil			 v1.0.2 \
	github.com/btcsuite/go-socks			 v0.0.0-20170105172521-4720035b7bfd \
	github.com/btcsuite/goleveldb			 v0.0.0-20160330041536-7834afc9e8cd \
	github.com/btcsuite/snappy-go			 v0.0.0-20151229074030-0bdef8d06723 \
	github.com/btcsuite/websocket			 v0.0.0-20150119174127-31079b680792 \
	github.com/btcsuite/winsvc			 v1.0.0 \
	github.com/danwakefield/fnmatch			 v0.0.0-20160403171240-cbb64ac3d964 \
	github.com/davecgh/go-spew			 v1.1.1 \
	github.com/disintegration/imaging		 v1.6.2 \
	github.com/dlclark/regexp2			 v1.2.0 \
	github.com/fsnotify/fsnotify			 v1.4.7 \
	github.com/gabriel-vasile/mimetype		 v1.1.1 \
	github.com/gdamore/encoding			 v1.0.0 \
	github.com/golang/protobuf			 v1.2.0 \
	github.com/gorilla/mux				 v1.7.4 \
	github.com/hpcloud/tail				 v1.0.0 \
	github.com/jessevdk/go-flags			 v0.0.0-20141203071132-1679536dcc89 \
	github.com/jrick/logrotate			 v1.0.0 \
	github.com/kkdai/bstream			 v0.0.0-20161212061736-f391b8402d23 \
	github.com/kyokomi/emoji/v2			 v2.2.5 \
	github.com/lib/pq				 v1.7.0 \
	github.com/lithammer/fuzzysearch		 v1.1.1 \
	github.com/lucasb-eyer/go-colorful		 v1.0.3 \
	github.com/mattn/go-colorable			 v0.1.6 \
	github.com/mattn/go-isatty			 v0.0.12 \
	github.com/mattn/go-runewidth			 v0.0.9 \
	github.com/mattn/go-sqlite3			 v1.14.0 \
	github.com/nu7hatch/gouuid			 v0.0.0-20131221200532-179d4d0c4d8d \
	github.com/onsi/ginkgo				 v1.7.0 \
	github.com/onsi/gomega				 v1.4.3 \
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
	github.com/zyedidia/clipboard			 v1.0.3 \
	github.com/zyedidia/poller			 v1.0.1 \
	go.etcd.io/bbolt				 v1.3.5 \
	golang.org/x/crypto				 v0.0.0-20201016220609-9e8e0b390897 \
	golang.org/x/image				 v0.0.0-20200927104501-e162460cd6b5 \
	golang.org/x/net				 v0.0.0-20201026091529-146b70c837a4 \
	golang.org/x/sync				 v0.0.0-20180314180146-1d60e4601c6f \
	golang.org/x/sys				 v0.0.0-20200930185726-fdedc70b468f \
	golang.org/x/text				 v0.3.3 \
	golang.org/x/tools				 v0.0.0-20180917221912-90fa682c2a6e \
	gopkg.in/check.v1				 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/fsnotify.v1				 v1.4.7 \
	gopkg.in/toast.v1				 v1.0.0-20180812000517-0a84660828b2 \
	gopkg.in/tomb.v1				 v1.0.0-20141024135613-dd632973f1e7 \
	gopkg.in/vansante/go-ffprobe.v2			 v2.0.2 \
	gopkg.in/yaml.v2				 v2.3.0 \
	gopkg.in/yaml.v3				 v3.0.0-20200313102051-9f266ea9e77c \
	maunium.net/go/maulogger/v2			 v2.1.1 \
	maunium.net/go/mautrix				 v0.8.0 \
	maunium.net/go/mauview				 v0.1.2 \
	maunium.net/go/tcell				 v0.2.0

MODGO_MODFILES =	\
	github.com/btcsuite/btcutil	 v0.0.0-20190425235716-9e5f4b9a998d \
	github.com/davecgh/go-spew	 v0.0.0-20171005155431-ecdeabc65495 \
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/onsi/ginkgo		 v1.6.0 \
	github.com/pkg/errors		 v0.8.1 \
	github.com/stretchr/testify	 v1.2.2 \
	github.com/stretchr/testify	 v1.3.0 \
	github.com/tidwall/pretty	 v1.0.0 \
	github.com/zyedidia/clipboard	 v0.0.0-20200421031010-7c45b8673834 \
	golang.org/x/crypto		 v0.0.0-20170930174604-9419663f5a44 \
	golang.org/x/crypto		 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto		 v0.0.0-20200115085410-6d4e4cb37c7d \
	golang.org/x/crypto		 v0.0.0-20200622213623-75b288015ac9 \
	golang.org/x/image		 v0.0.0-20191009234506-e7c1f5e7dbb8 \
	golang.org/x/net		 v0.0.0-20180218175443-cbe0f9307d01 \
	golang.org/x/net		 v0.0.0-20180906233101-161cd47e91fd \
	golang.org/x/net		 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net		 v0.0.0-20200202094626-16171245cfb2 \
	golang.org/x/net		 v0.0.0-20200324143707-d3edc9973b7e \
	golang.org/x/sys		 v0.0.0-20180909124046-d0be0721c37e \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys		 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys		 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys		 v0.0.0-20200202164722-d101bd2416d5 \
	golang.org/x/sys		 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/sys		 v0.0.0-20200323222414-85ca7c5b95cd \
	golang.org/x/sys		 v0.0.0-20200413165638-669c56c373c4 \
	golang.org/x/sys		 v0.0.0-20200501145240-bc7a7d42d5c3 \
	golang.org/x/text		 v0.3.0 \
	golang.org/x/text		 v0.3.2 \
	gopkg.in/yaml.v2		 v2.2.1

.include <bsd.port.mk>
