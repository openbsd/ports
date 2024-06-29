COMMENT =	lightweight, simple, fast, extensible text editor

V =		2.1.5
GH_ACCOUNT =	lite-xl
GH_PROJECT =	lite-xl
GH_TAGNAME =	v$V
PKGNAME =	litexl-$V

CATEGORIES =	editors
HOMEPAGE =	https://lite-xl.com
MAINTAINER =	Denis Fondras <denis@openbsd.org>

# MIT
PERMIT_PACKAGE =Yes

# GNU11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB =	c freetype lua5.4 m pcre2-8 SDL2

MODULES =	devel/meson	\
		lang/lua

MODLUA_VERSION =5.4

LIB_DEPENDS =   devel/sdl2	\
		devel/pcre2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS =	-Duse_system_lua=true \
			-Ddirmonitor_backend=kqueue

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{meson.build,src/main.c}

.include <bsd.port.mk>
