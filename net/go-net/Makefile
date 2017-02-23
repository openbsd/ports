# $OpenBSD: Makefile,v 1.4 2017/02/23 16:02:24 jsing Exp $

COMMENT =	Go supplementary network libraries
DISTNAME =	go-net-20170201
GH_ACCOUNT =	golang
GH_PROJECT =	net
GH_COMMIT =	f2499483f923065a842d38eb4c7f1927e6fc6e6d
CATEGORIES =	net www devel

HOMEPAGE =	https://godoc.org/golang.org/x/net/

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	c pthread

MODULES =	lang/go

BUILD_DEPENDS =	security/go-crypto \
		textproc/go-text

MODGO_TYPE =	lib
_MAIN =		golang.org/x/net
_SUBPKGS =	bpf \
		context \
		context/ctxhttp \
		dict \
		html \
		html/atom \
		html/charset \
		http2 \
		http2/h2i \
		http2/hpack \
		icmp \
		idna \
		internal/iana \
		internal/nettest \
		internal/timeseries \
		ipv4 \
		ipv6 \
		lex/httplex \
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
