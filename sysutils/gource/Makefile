COMMENT =	software version control visualization tool

DISTNAME =	gource-0.55
CATEGORIES =	sysutils graphics
HOMEPAGE =	https://gource.io/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/acaudwell/Gource/releases/download/${DISTNAME}/

CONFIGURE_STYLE =	gnu
COMPILER =		base-clang ports-gcc


WANTLIB += GL GLEW GLU SDL2 SDL2_image boost_filesystem boost_system
WANTLIB += c freetype m pcre2-8 png pthread ${COMPILER_LIBCXX}
WANTLIB += X11 Xext Xi Xmu

BUILD_DEPENDS =		graphics/glm
LIB_DEPENDS =           devel/boost \
			devel/pcre2 \
			devel/sdl2-image \
			graphics/glew

post-install:
	@gzip -d ${PREFIX}/man/man1/gource.1.gz

.include <bsd.port.mk>
