# $OpenBSD: Makefile,v 1.1.1.1 2017/08/29 16:59:02 landry Exp $

COMMENT =		SipHash-2-4 in go

GH_ACCOUNT =		dchest
GH_PROJECT =		siphash
GH_TAGNAME =		v1.0.0
DISTNAME =		go-siphash
PKGNAME =		${DISTNAME}-${GH_TAGNAME:S/^v//}

CATEGORIES =		security

HOMEPAGE =		https://github.com/dchest/siphash

MAINTAINER =		Sean Levy <attila@stalphonsos.com>

# CC0
PERMIT_PACKAGE_CDROM =	Yes

MODULES +=		lang/go

MODGO_TYPE =		lib

.include <bsd.port.mk>
