# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:33 sthen Exp $

COMMENT =	crossplatform music editor for creating Commodore 64 music

V =		2.75
DISTNAME =	GoatTracker_${V}
PKGNAME =	goattracker-${V}

CATEGORIES =	audio

EXTRACT_SUFX =	.zip

HOMEPAGE =	http://covertbitops.c64.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL c m pthread ${COMPILER_LIBCXX}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=goattracker2/}GoatTracker%202/${V}/

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS =	devel/sdl

WRKDIST =	${WRKDIR}/goattrk2/src

USE_GMAKE =	Yes

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}"

MAKE_FILE =	makefile

NO_TEST =	Yes

pre-configure:
	rm ${WRKSRC}/*.o ${WRKSRC}/*/*.o

do-install:
	for f in goattrk2 gt2reloc ins2snd2 mod2sng sngspli2; do \
		${INSTALL_PROGRAM} ${WRKDIR}/goattrk2/linux/$$f ${PREFIX}/bin; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/goattracker
	${INSTALL_DATA} ${WRKDIR}/goattrk2/readme.txt \
		${PREFIX}/share/doc/goattracker

.include <bsd.port.mk>
