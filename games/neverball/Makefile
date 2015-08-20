# $OpenBSD: Makefile,v 1.16 2015/08/20 18:03:53 ajacoutot Exp $

COMMENT-main =	tilt the floor to roll a ball through an obstacle course
COMMENT-data =	data for Neverball/Neverputt
BROKEN-hppa =	SIGILL on data/ball/snowglobe/snowglobe-inner.so

V =		1.5.4
DISTNAME =	neverball-$V
PKGNAME-main =	neverball-$V
PKGNAME-data =	neverball-data-$V
EPOCH =		0
REVISION-main = 3
REVISION-data =	0

CATEGORIES =	games x11

HOMEPAGE =	http://neverball.org/

MULTI_PACKAGES =-main -data

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	GL SDL X11 c m pthread ogg vorbis vorbisfile \
		jpeg png SDL_ttf physfs

MASTER_SITES =	${HOMEPAGE}

LIB_DEPENDS-main =	${MODGETTEXT_LIB_DEPENDS} \
			audio/libogg \
			audio/libvorbis \
			graphics/jpeg \
			graphics/png \
			devel/sdl-ttf \
			devel/physfs
RUN_DEPENDS-data =
LIB_DEPENDS-data =
WANTLIB-data =

RUN_DEPENDS-main =	${FULLPKGNAME-data}:${BUILD_PKGPATH},-data

MODULES =	devel/gettext

USE_GMAKE =	Yes
NO_TEST =	Yes

MAKE_FLAGS =	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread -logg -lvorbis" \
		INTL_LIBS="-lintl -liconv"

SUBST_VARS =	V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/share/base_config.h ${WRKSRC}/Makefile \
		${WRKSRC}/scripts/version.sh

do-install:
	cd ${WRKSRC} && ${INSTALL_PROGRAM} neverball neverputt ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/neverball \
		${PREFIX}/share/doc/neverball
	cd ${WRKSRC}/data && find . -type f ! -perm 644 -exec chmod 644 {} \;
	cd ${WRKSRC} && find data -type f | pax -rw ${PREFIX}/share/neverball 
	cd ${WRKSRC} && find locale -type f | pax -rw ${PREFIX}/share
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README doc/AUTHORS doc/MANUAL \
		${PREFIX}/share/doc/neverball

.include <bsd.port.mk>
