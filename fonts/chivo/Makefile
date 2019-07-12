# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:11 sthen Exp $

COMMENT =	open-source Grotesque sans-serif typeface family

# version numbers listed in README.md
DISTNAME =	chivo-1.007

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
	${INSTALL_DATA} ${WRKDIST}/fonts/webfonts/woff/*.woff ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/webfonts/woff2/*.woff2 ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{README.md,OFL.txt} ${DOCDIR}

.include <bsd.port.mk>
