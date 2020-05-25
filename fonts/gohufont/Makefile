# $OpenBSD: Makefile,v 1.10 2020/05/25 06:55:37 bentley Exp $

COMMENT = 	monospace bitmap font for programming and terminal use
PKG_ARCH =	*
DISTNAME =	gohufont-2.1
CATEGORIES =	fonts x11
REVISION =	2

HOMEPAGE =	https://font.gohu.org/
MASTER_SITES =	https://font.gohu.org/

# WTFPLv2
PERMIT_PACKAGE =		Yes

NO_BUILD =	Yes
NO_TEST =	Yes
FONTDIR =	${PREFIX}/share/fonts/gohufont
USE_X11 =	Yes

do-install:
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		grep '\-gohufont-' | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${FONTDIR}/fonts.alias-gohufont
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gohufont
	${INSTALL_DATA} ${WRKDIST}/{COPYING-LICENSE,README.md} \
		${PREFIX}/share/doc/gohufont

.include <bsd.port.mk>
