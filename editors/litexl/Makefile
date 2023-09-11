COMMENT =	lightweight, simple, fast, extensible text editor

V =		2.1.1
GH_ACCOUNT =	lite-xl
GH_PROJECT =	lite-xl
GH_TAGNAME =	v$V
PKGNAME =	litexl-$V

CATEGORIES =	editors
HOMEPAGE =	https://lite-xl.com
MAINTAINER =	Denis Fondras <denis@openbsd.org>

# MIT
PERMIT_PACKAGE =Yes

WANTLIB =	c freetype lua5.4 m pcre2-8 SDL2

MODULES =	devel/meson	\
		lang/lua

MODLUA_VERSION =5.4

LIB_DEPENDS =   devel/sdl2	\
		devel/pcre2

.include <bsd.port.mk>
