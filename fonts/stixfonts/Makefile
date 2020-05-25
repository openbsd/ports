# $OpenBSD: Makefile,v 1.2 2020/05/25 03:40:08 bentley Exp $

COMMENT =	scientific, technical and mathematical fonts

V =		2.0.2
PKGNAME =	stixfonts-${V}
REVISION =	0

GH_ACCOUNT =	stipub
GH_PROJECT =	stixfonts
GH_TAGNAME =	v${V}

CATEGORIES =	fonts

HOMEPAGE =	https://www.stixfonts.org/

MAINTAINER =	George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

FONTDIR =		${PREFIX}/share/fonts/stixfonts
DOCDIR =		${PREFIX}/share/doc/stixfonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/OTF/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/README.md ${DOCDIR}

.include <bsd.port.mk>
