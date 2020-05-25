# $OpenBSD: Makefile,v 1.11 2020/05/25 03:40:08 bentley Exp $

COMMENT =		Firefox OS typeface

V =			4.202
PKGNAME =		fira-fonts-${V}
EPOCH =			0
REVISION =		0

GH_ACCOUNT =		mozilla
GH_PROJECT =		fira
GH_TAGNAME =		${V}

CATEGORIES =		fonts x11

HOMEPAGE =		https://mozilla.github.io/Fira/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

WRKDIST =		${WRKDIR}/Fira-${V}

FONTDIR =		${PREFIX}/share/fonts/fira
DOCDIR =		${PREFIX}/share/doc/fira

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/otf/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/ttf/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{LICENSE,README.md} ${DOCDIR}

.include <bsd.port.mk>
