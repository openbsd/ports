# $OpenBSD: Makefile,v 1.10 2019/03/16 13:41:01 jsing Exp $

COMMENT =	Go supplementary network libraries
DISTNAME =	go-net-20190226
GH_ACCOUNT =	golang
GH_PROJECT =	net
GH_COMMIT =	fe579d43d83210096a79b46dcca0e3721058393a
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
