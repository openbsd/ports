# $OpenBSD: Makefile,v 1.21 2019/07/12 20:46:21 sthen Exp $

COMMENT-main =	tilt the floor to roll a ball through an obstacle course
COMMENT-data =	data for Neverball/Neverputt
BROKEN-hppa =	SIGILL on data/ball/snowglobe/snowglobe-inner.so

V =		1.6.0
REVISION-main =	2
DISTNAME =	neverball-$V
PKGNAME-main =	neverball-$V
PKGNAME-data =	neverball-data-$V
EPOCH =		0

CATEGORIES =	games x11

HOMEPAGE =	http://neverball.org/

MULTI_PACKAGES =-main -data

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB-main =	GL SDL2 c m pthread ogg vorbis vorbisfile \
		jpeg png SDL2_ttf physfs iconv intl

MASTER_SITES =	${HOMEPAGE}

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS-main =	audio/libogg \
			audio/libvorbis \
			graphics/jpeg \
			graphics/png \
			devel/sdl2-ttf \
			devel/physfs \
			devel/gettext,-runtime
RUN_DEPENDS-data =
LIB_DEPENDS-data =
WANTLIB-data =

RUN_DEPENDS-main =	${FULLPKGNAME-data}:${BUILD_PKGPATH},-data

USE_GMAKE =	Yes
NO_TEST =	Yes

MAKE_FLAGS =	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
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
	cd ${WRKSRC} && ${INSTALL_DATA} LICENSE.md README.md doc/authors.txt \
		doc/manual.txt ${PREFIX}/share/doc/neverball

.include <bsd.port.mk>
