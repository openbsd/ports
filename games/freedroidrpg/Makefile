# $OpenBSD: Makefile,v 1.27 2016/06/17 18:55:42 jasper Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	isometric RPG game

DISTNAME =	freedroidRPG-0.16.1
PKGNAME =	${DISTNAME:L}
CATEGORIES=	games x11

HOMEPAGE =	http://www.freedroid.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL SDL SDL_gfx SDL_image SDL_mixer X11 c execinfo jpeg
WANTLIB += ${MODLUA_WANTLIB} m ogg png pthread vorbis z

MASTER_SITES =	ftp://ftp.osuosl.org/pub/freedroid/${DISTNAME:R}/

WRKDIST =	${WRKDIR}/${DISTNAME:L}

MODULES =	devel/gettext \
		lang/lua \
		lang/python

MODLUA_SA =	Yes
MODLUA_VERSION =5.3

MODPY_RUNDEP =	No

BUILD_DEPENDS =	lang/gawk
LIB_DEPENDS=	devel/libexecinfo \
		devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		${MODLUA_LIB_DEPENDS}
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LUA_CFLAGS="$$(pkg-config --cflags ${MODLUA_DEP})" \
		LUA_LIBS="$$(pkg-config --libs ${MODLUA_DEP})" \
		ac_cv_path_LUADOX=

USE_GMAKE =	Yes
MAKE_FLAGS =	AWK=gawk

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/freedroidrpg

.include <bsd.port.mk>
