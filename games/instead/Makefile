COMMENT =		simple text adventure interpreter
V =			3.0.1
DISTNAME =		instead_${V}
PKGNAME =		${DISTNAME:C/_/-/}
CATEGORIES =		games
HOMEPAGE =		https://instead.syscall.ru/
MAINTAINER =		Roman Yakovlev <obsd@51t.ru>
REVISION =		2

# MIT, LGPL (SDL_anigif), zlib (SDL_gfx), 3-clause BSDL (tinymt32)
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODLUA_WANTLIB}
WANTLIB += SDL SDL_image SDL_mixer SDL_ttf atk-1.0 c cairo gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangoxft-1.0 pthread z

SITES =			${SITE_SOURCEFORGE:=instead/}

MODULES	=		devel/cmake lang/lua
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		converters/libiconv \
			devel/sdl-mixer \
			devel/sdl-ttf \
			devel/sdl-image \
			x11/gtk+2

CONFIGURE_ARGS =	-DMANDIR=man

NO_TEST =		Yes
WRKDIST =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
