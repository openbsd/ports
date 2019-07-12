# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:12 sthen Exp $

COMMENT =		fonts from the League of Moveable Type

PKGNAME =		league-fonts-0.1
REVISION =		2
PKG_ARCH =		*
EXTRACT_SUFX =		.zip
.for font in \
			blackout chunk flaminia-type-system goudy-bookletter-1911 junction \
			league-gothic league-script-1 linden-hill orbitron \
			prociono raleway sniglet sorts-mill-goudy
DISTFILES +=		${font}${EXTRACT_SUFX}
.endfor

CATEGORIES =		fonts x11

HOMEPAGE =		http://www.theleagueofmoveabletype.com/
MASTER_SITES =		http://s3.amazonaws.com/theleague-production/fonts/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		leaguefonts

NO_BUILD =		Yes
NO_TEST =		Yes

INST_DIR=       ${PREFIX}/share/fonts/league-fonts/

post-extract:
	rm -r ${WRKDIR}/__MACOSX/
	mv ${WRKDIR}/Orbitron/readme.txt ${WRKDIR}/Orbitron/Orbitron_readme.txt
	mv ${WRKDIR}/Blackout/please_read_me.txt ${WRKDIR}/Blackout_please_read_me.txt

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/*.??f ${WRKDIR}/*/*.??f ${WRKDIR}/*/*.txt ${INST_DIR}

.include <bsd.port.mk>
