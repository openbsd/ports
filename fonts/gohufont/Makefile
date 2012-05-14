# $OpenBSD: Makefile,v 1.1.1.1 2012/05/14 11:15:41 dcoppa Exp $

COMMENT = 	monospace bitmap font for programming and terminal use
PKG_ARCH =	*
DISTNAME =	gohufont-2.0
CATEGORIES =	fonts x11
MAINTAINER =	Tobias Ulmer <tobiasu@tmux.org>

HOMEPAGE =	http://font.gohu.eu
MASTER_SITES =	${HOMEPAGE}/

# WTFPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

NO_BUILD =	Yes
NO_REGRESS =	Yes
FONTDIR =	${PREFIX}/lib/X11/fonts/gohufont

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.pcf.gz ${FONTDIR}
	${X11BASE}/bin/mkfontdir ${FONTDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gohufont
	${INSTALL_DATA} ${WRKDIST}/{COPYING-LICENSE,README} \
		${PREFIX}/share/doc/gohufont

.include <bsd.port.mk>
