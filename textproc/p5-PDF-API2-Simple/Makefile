# $OpenBSD: Makefile,v 1.1.1.1 2011/04/15 21:07:33 jasper Exp $

COMMENT =		simple wrapper for PDF::API2 module

MODULES =		cpan
DISTNAME =		PDF-API2-Simple-1.1.4u
PKGNAME =		p5-${DISTNAME:S/u$//}
CATEGORIES =		textproc

MAINTAINER =		Anibal Ezau Limon Belmares <limon.anibal@gmail.com>

# public domain
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		textproc/p5-PDF-API2
BUILD_DEPENDS =		${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes

CONFIGURE_STYLE =	modinst
MAKE_ENV +=		TEST_POD=1

WRKDIST =		${WRKDIR}/${DISTNAME:S/u$//}

.include <bsd.port.mk>
