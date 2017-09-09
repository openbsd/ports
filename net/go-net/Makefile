# $OpenBSD: Makefile,v 1.6 2017/09/09 07:02:38 ajacoutot Exp $

COMMENT =	Go supplementary network libraries
DISTNAME =	go-net-20170824
GH_ACCOUNT =	golang
GH_PROJECT =	net
GH_COMMIT =	57efc9c3d9f91fb3277f8da1cff370539c4d3dc5
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
		http2 \
		http2/h2i \
		http2/hpack \
		icmp \
		idna \
		internal/iana \
		internal/nettest \
		internal/socket \
		internal/timeseries \
		ipv4 \
		ipv6 \
		lex/httplex \
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
