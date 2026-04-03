COMMENT =	open-source version of the classic Jazz Jackrabbit games
CATEGORIES =	games x11

GH_ACCOUNT =	AlisterT
GH_PROJECT =	openjazz
GH_TAGNAME =	20260301

HOMEPAGE =	http://www.alister.eu/jazz/oj/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	textproc/asciidoctor

LIB_DEPENDS =	devel/sdl2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS +=	-DGIT_TAG=${GH_TAGNAME}

.include <bsd.port.mk>
