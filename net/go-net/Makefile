# $OpenBSD: Makefile,v 1.1.1.1 2016/05/21 01:22:29 czarkoff Exp $

COMMENT =	Go supplementary network libraries
DISTNAME =	go-net-20160510
GH_ACCOUNT =	golang
GH_PROJECT =	net
GH_COMMIT =	96dbb961a39ddccf16860cdd355bfa639c497f23
CATEGORIES =	net www devel

HOMEPAGE =	https://godoc.org/golang.org/x/net/

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	c pthread

MODULES =	lang/go

BUILD_DEPENDS =	security/go-crypto \
		textproc/go-text

MODGO_TYPE =	lib
_MAIN =		golang.org/x/net
_SUBPKGS =	bpf context context/ctxhttp dict html html/atom html/charset \
		http2 http2/h2i http2/hpack icmp idna internal/iana \
		internal/nettest internal/timeseries ipv4 ipv6 netutil proxy \
		publicsuffix trace webdav webdav/internal/xml websocket \
		xsrftoken
ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
