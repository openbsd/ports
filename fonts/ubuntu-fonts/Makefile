# $OpenBSD: Makefile,v 1.9 2019/04/30 05:48:53 bentley Exp $

COMMENT =		unicode sans-serif/monospace TrueType fonts from Ubuntu

V =			0.83
DISTNAME =		fad7939b-ubuntu-font-family-$V
PKGNAME =		ubuntu-fonts-$V
REVISION =		0

CATEGORIES =		fonts

HOMEPAGE =		https://design.ubuntu.com/font/

MAINTAINER =		Tim van der Molen <tim@openbsd.org>

# Ubuntu Font Licence 1.0
# https://www.ubuntu.com/legal/font-licence
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		https://assets.ubuntu.com/v1/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

WRKDIST =		${WRKDIR}/ubuntu-font-family-$V

FONTDIR =		${PREFIX}/share/fonts/ubuntu
DOCDIR =		${PREFIX}/share/doc/ubuntu-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/*ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*txt ${DOCDIR}

.include <bsd.port.mk>
