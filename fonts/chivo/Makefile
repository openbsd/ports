# $OpenBSD: Makefile,v 1.3 2020/05/25 03:40:08 bentley Exp $

COMMENT =	open-source Grotesque sans-serif typeface family

# version numbers listed in README.md
DISTNAME =	chivo-1.007
REVISION =	0

CATEGORIES =	fonts

GH_ACCOUNT =	Omnibus-Type
GH_PROJECT =	Chivo
GH_COMMIT =	d2256458207fadf0d53499caf0af16d884a2418a

HOMEPAGE =	https://www.omnibus-type.com/fonts/chivo/
MAINTAINER =	George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

PKG_ARCH =	*

NO_BUILD =	Yes

NO_TEST =	Yes

FONTDIR =	${PREFIX}/share/fonts/chivo
DOCDIR =	${PREFIX}/share/doc/chivo

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/otf/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/ttf/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{README.md,OFL.txt} ${DOCDIR}

.include <bsd.port.mk>
