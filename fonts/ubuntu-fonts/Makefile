# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:13 sthen Exp $

COMMENT =		unicode sans-serif/monospace TrueType fonts from Ubuntu

V =			0.83
DISTNAME =		fad7939b-ubuntu-font-family-$V
PKGNAME =		ubuntu-fonts-$V
REVISION =		1

CATEGORIES =		fonts

HOMEPAGE =		https://design.ubuntu.com/font/

# Ubuntu Font Licence 1.0
# https://www.ubuntu.com/legal/font-licence
PERMIT_PACKAGE =		Yes

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
