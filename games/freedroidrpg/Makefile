ONLY_FOR_ARCHS=		${GCC4_ARCHS} ${CLANG_ARCHS}

COMMENT=		isometric RPG game

DISTNAME=		freedroidRPG-1.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		games x11
REVISION=		1

HOMEPAGE=		https://www.freedroid.org/

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODLUA_WANTLIB}
WANTLIB += GL GLEW GLU SDL SDL_gfx SDL_image SDL_mixer X11 Xext
WANTLIB += Xi Xmu c execinfo iconv intl jpeg m ogg png pthread
WANTLIB += vorbis z

SITES=			https://ftp.osuosl.org/pub/freedroid/${DISTNAME}/

WRKDIST=		${WRKDIR}/${DISTNAME:L}

MODULES=		lang/lua \
			lang/python

MODLUA_SA=		Yes
MODLUA_VERSION=		5.3

USE_GMAKE=		Yes

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/sdl-gfx \
			devel/sdl-image \
			devel/sdl-mixer \
			graphics/glew \
			${MODLUA_LIB_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+4,-guic

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LUA_CFLAGS="$$(pkg-config --cflags ${MODLUA_DEP})" \
			LUA_LIBS="$$(pkg-config --libs ${MODLUA_DEP})" \
			ac_cv_path_LUADOX=

.include <bsd.port.mk>
