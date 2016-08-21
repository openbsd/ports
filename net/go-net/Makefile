# $OpenBSD: Makefile,v 1.3 2016/08/21 14:24:47 czarkoff Exp $

COMMENT =	Go supplementary network libraries
DISTNAME =	go-net-20160808
GH_ACCOUNT =	golang
GH_PROJECT =	net
GH_COMMIT =	198e27a07214495d89b9d748ab0877fa37c7c4ac
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
