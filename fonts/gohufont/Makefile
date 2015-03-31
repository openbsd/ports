# $OpenBSD: Makefile,v 1.5 2015/03/31 09:45:10 ajacoutot Exp $

COMMENT = 	monospace bitmap font for programming and terminal use
PKG_ARCH =	*
DISTNAME =	gohufont-2.0
CATEGORIES =	fonts x11
MAINTAINER =	Tobias Ulmer <tobiasu@tmux.org>
REVISION =	1

HOMEPAGE =	http://font.gohu.eu
MASTER_SITES =	${HOMEPAGE}/

# WTFPLv2
PERMIT_PACKAGE_CDROM =		Yes

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
	${INSTALL_DATA} ${WRKDIST}/{COPYING-LICENSE,README} \
		${PREFIX}/share/doc/gohufont

.include <bsd.port.mk>
