# $OpenBSD: Makefile,v 1.9 2018/09/23 17:22:57 jsing Exp $

COMMENT =	Go supplementary network libraries
DISTNAME =	go-net-20180825
GH_ACCOUNT =	golang
GH_PROJECT =	net
GH_COMMIT =	faa378e6dbaed88bd8100f8bcf09939375c6e8fa
CATEGORIES =	net www devel

HOMEPAGE =	https://godoc.org/golang.org/x/net/

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	c pthread

MODULES =	lang/go

BUILD_DEPENDS =	devel/go-sys \
		security/go-crypto \
		textproc/go-text

# Avoid external network dependencies for tests...
MODGO_TEST_FLAGS = -test.short

MODGO_TYPE =	lib

_MAIN =		golang.org/x/net
_SUBPKGS =	bpf \
		context \
		context/ctxhttp \
		dict \
		dns/dnsmessage \
		html \
		html/atom \
		html/charset \
		http/httpguts \
		http/httpproxy \
		http2 \
		http2/h2c \
		http2/h2i \
		http2/hpack \
		icmp \
		idna \
		internal/iana \
		internal/nettest \
		internal/socket \
		internal/socks \
		internal/sockstest \
		internal/timeseries \
		ipv4 \
		ipv6 \
		nettest \
		netutil \
		proxy \
		publicsuffix \
		route \
		trace \
		webdav \
		webdav/internal/xml \
		websocket \
		xsrftoken

ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
