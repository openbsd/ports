# $OpenBSD: Makefile,v 1.5 2009/12/23 22:41:28 benoit Exp $

COMMENT-main =	tilt the floor to roll a ball through an obstacle course
COMMENT-data =	data for Neverball/Neverputt

V =		1.5.4
DISTNAME =	neverball-$V
PKGNAME =	neverball-$Vv0
PKGNAME-main =	neverball-$Vv0
PKGNAME-data =	neverball-data-$Vv0

CATEGORIES =	games x11

HOMEPAGE =	http://neverball.org/

MULTI_PACKAGES =-main -data

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main =	GL SDL X11 c iconv intl m pthread z

MASTER_SITES =	${HOMEPAGE}

LIB_DEPENDS-main =	ogg::audio/libogg \
			vorbis,vorbisfile::audio/libvorbis \
			jpeg::graphics/jpeg \
			png::graphics/png \
			SDL_ttf::devel/sdl-ttf \
			physfs::devel/physfs
LIB_DEPENDS-data =
RUN_DEPENDS-main =	:${PKGNAME-data}:${BUILD_PKGPATH},-data

MODULES =	devel/gettext

USE_GMAKE =	Yes
NO_REGRESS =	Yes

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
