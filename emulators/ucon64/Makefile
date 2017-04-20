# $OpenBSD: Makefile,v 1.1.1.1 2017/04/20 13:48:29 fcambus Exp $

COMMENT =	swiss army knife for video game console emulators

DISTNAME =	ucon64-2.0.3-src
PKGNAME =	${DISTNAME:S/-src//}

CATEGORIES =	emulators

HOMEPAGE =	http://ucon64.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ucon64/}

WRKSRC =	${WRKDIST}/src

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-discmage --disable-dload --disable-parallel

USE_GMAKE =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ucon64 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ucon64
	${INSTALL_DATA} ${WRKDIST}/faq.html ${PREFIX}/share/doc/ucon64

.include <bsd.port.mk>
