# $OpenBSD: Makefile,v 1.13 2019/09/12 18:52:16 jsing Exp $

COMMENT =	Go supplementary network libraries
DISTNAME =	go-net-20190904
GH_ACCOUNT =	golang
GH_PROJECT =	net
GH_COMMIT =	ba9fcec4b297b415637633c5a6e8fa592e4a16c3
CATEGORIES =	net www devel

HOMEPAGE =	https://godoc.org/golang.org/x/net/

# BSD
PERMIT_PACKAGE =Yes

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
