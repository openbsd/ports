# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:47 sthen Exp $

COMMENT =		simple wrapper for PDF::API2 module

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		PDF-API2-Simple-1.1.4u
PKGNAME =		p5-${DISTNAME:S/u$//}
CATEGORIES =		textproc
REVISION =		1

# public domain
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		textproc/p5-PDF-API2
BUILD_DEPENDS =		${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes

CONFIGURE_STYLE =	modinst
MAKE_ENV +=		TEST_POD=1

WRKDIST =		${WRKDIR}/${DISTNAME:S/u$//}

.include <bsd.port.mk>
