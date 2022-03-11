COMMENT =	website access log visualization

DISTNAME =	logstalgia-1.1.2
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://logstalgia.io/
REVISION =	1

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/acaudwell/Logstalgia/releases/download/${DISTNAME}/

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU SDL2 SDL2_image X11
WANTLIB += Xext Xi Xmu c freetype m pcre png z

CONFIGURE_STYLE =gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

# -std=gnu++0x
COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS =	graphics/glm \
		devel/boost

LIB_DEPENDS =	graphics/glew \
		devel/pcre \
		devel/sdl2-image

post-install:
	@gzip -d ${PREFIX}/man/man1/logstalgia.1.gz

.include <bsd.port.mk>
