# $OpenBSD: Makefile,v 1.4 2017/04/10 11:45:23 sthen Exp $

COMMENT =	crossplatform music editor for creating Commodore 64 music

V =		2.73
DISTNAME =	GoatTracker_${V}
PKGNAME =	goattracker-${V}
REVISION =	0

CATEGORIES =	audio

EXTRACT_SUFX =	.zip

HOMEPAGE =	http://covertbitops.c64.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL c m pthread ${LIBCXX}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=goattracker2/}GoatTracker%202/${V}/

LIB_DEPENDS =	devel/sdl

WRKDIST =	${WRKDIR}/src

USE_GMAKE =	Yes

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}"

MAKE_FILE =	makefile

NO_TEST =	Yes

do-install:
	for f in betaconv goattrk2 gt2reloc ins2snd2 mod2sng sngspli2; do \
		${INSTALL_PROGRAM} ${WRKDIR}/bin/$$f ${PREFIX}/bin; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/goattracker
	${INSTALL_DATA} ${WRKDIR}/readme.txt ${PREFIX}/share/doc/goattracker

.include <bsd.port.mk>
