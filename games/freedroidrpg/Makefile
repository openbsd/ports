# $OpenBSD: Makefile,v 1.24 2014/11/02 15:19:22 ajacoutot Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	isometric RPG game

DISTNAME =	freedroidRPG-0.15.1
PKGNAME =	${DISTNAME:L}
CATEGORIES=	games x11
REVISION =	3

HOMEPAGE =	http://www.freedroid.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL SDL SDL_gfx SDL_image SDL_mixer X11 c execinfo jpeg
WANTLIB += ${MODLUA_WANTLIB} m ogg png pthread vorbis z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=freedroid/}

WRKDIST =	${WRKDIR}/${DISTNAME:L}

MODULES=	lang/lua
MODLUA_SA =	Yes

LIB_DEPENDS=	devel/libexecinfo \
		devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		${MODLUA_LIB_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LUA_CFLAGS="$$(pkg-config --cflags lua51)" \
		LUA_LIBS="$$(pkg-config --libs lua51)"

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/freedroidrpg

.include <bsd.port.mk>
