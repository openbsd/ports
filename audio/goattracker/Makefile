# $OpenBSD: Makefile,v 1.1.1.1 2016/09/03 10:44:38 fcambus Exp $

COMMENT =	crossplatform music editor for creating Commodore 64 music

V =		2.73
DISTNAME =	GoatTracker_${V}
PKGNAME =	goattracker-${V}
CATEGORIES =	audio

EXTRACT_SUFX =	.zip

HOMEPAGE =	http://covertbitops.c64.org/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL c m pthread stdc++

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=goattracker2/}GoatTracker%202/${V}/

LIB_DEPENDS =	devel/sdl

WRKDIST =	${WRKDIR}/src

USE_GMAKE =	Yes

MAKE_FILE =	makefile

NO_TEST =	Yes

do-install:
	for f in betaconv goattrk2 gt2reloc ins2snd2 mod2sng sngspli2; do \
		${INSTALL_PROGRAM} ${WRKDIR}/bin/$$f ${PREFIX}/bin; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/goattracker
	${INSTALL_DATA} ${WRKDIR}/readme.txt ${PREFIX}/share/doc/goattracker

.include <bsd.port.mk>
