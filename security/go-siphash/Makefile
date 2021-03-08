# $OpenBSD: Makefile,v 1.3 2021/03/08 13:59:25 sthen Exp $

COMMENT =		SipHash-2-4 in go

GH_ACCOUNT =		dchest
GH_PROJECT =		siphash
GH_TAGNAME =		v1.0.0
DISTNAME =		go-siphash
PKGNAME =		${DISTNAME}-${GH_TAGNAME:S/^v//}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/dchest/siphash

MAINTAINER =		Sean Levy <attila@stalphonsos.com>
# CC0
PERMIT_PACKAGE =	Yes

MODULES +=		lang/go

MODGO_TYPE =		lib

.include <bsd.port.mk>
