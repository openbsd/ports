# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:46 sthen Exp $

COMMENT =	website access log visualization

DISTNAME =	logstalgia-1.1.2
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://logstalgia.io/
REVISION =	0

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/acaudwell/Logstalgia/releases/download/${DISTNAME}/

WANTLIB += GL GLEW GLU SDL2 SDL2_image c freetype m pcre png
WANTLIB += z ${COMPILER_LIBCXX}

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
