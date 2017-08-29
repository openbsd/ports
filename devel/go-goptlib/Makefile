# $OpenBSD: Makefile,v 1.1.1.1 2017/08/29 16:58:06 landry Exp $

COMMENT =		library for writing Tor pluggable transports in Go

GH_ACCOUNT =		torbsd
GH_PROJECT =		goptlib
GH_TAGNAME =		0.7
DISTNAME =		go-goptlib
PKGNAME =		${DISTNAME}-${GH_TAGNAME}

CATEGORIES =		devel

HOMEPAGE =		https://www.torproject.org/docs/pluggable-transports

MAINTAINER =		Sean Levy <attila@stalphonsos.com>

# CC0
PERMIT_PACKAGE_CDROM =	Yes

MODULES +=		lang/go

ALL_TARGET =		git.torproject.org/pluggable-transports/goptlib.git

MODGO_TYPE =		lib

BUILD_DEPENDS +=	net/go-net security/go-crypto

.include <bsd.port.mk>
