# $OpenBSD: Makefile,v 1.5 2020/08/13 21:18:45 naddy Exp $

COMMENT =	simple library to make decoding of Ogg Theora videos easier

# HG_CHANGESET and HG_COMMIT must be kept in sync.
HG_CHANGESET =	61
HG_COMMIT =	fb533bb8633e
DISTFILES =	libtheoraplay-${HG_CHANGESET}{${HG_COMMIT}}${EXTRACT_SUFX}

PKGNAME =	libtheoraplay-${HG_CHANGESET}
REVISION =	1
CATEGORIES =	multimedia
MASTER_SITES =	https://hg.icculus.org/icculus/theoraplay/archive/

SHARED_LIBS =	theoraplay	0.0	# Changeset 61

HOMEPAGE =	https://icculus.org/theoraplay/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += pthread
WANTLIB += ogg theoradec vorbis

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		multimedia/libtheora

WRKDIST =	${WRKDIR}/theoraplay-${HG_COMMIT}

SEPARATE_BUILD= Yes

# Dist comes with directory 'test' containing shell script to compile 3
# different binaries that can be used for testing. All 3 require an
# external Ogg Theora file (.ogv) to test.
NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && \
	${CC} ${CFLAGS} ${LDFLAGS} -fPIC -shared -I${LOCALBASE}/include \
		-L${LOCALBASE}/lib -lpthread -logg -lvorbis -ltheoradec -o \
		${WRKBUILD}/libtheoraplay.so.${LIBtheoraplay_VERSION} \
		theoraplay.c

do-install:
	${INSTALL_DATA} ${WRKSRC}/*theora*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libtheoraplay.so.${LIBtheoraplay_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
