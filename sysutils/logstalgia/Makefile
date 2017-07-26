# $OpenBSD: Makefile,v 1.14 2017/07/26 22:45:30 sthen Exp $

COMMENT =	website access log visualization

DISTNAME =	logstalgia-1.0.7
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://logstalgia.io/
REVISION =	0

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/acaudwell/Logstalgia/releases/download/${DISTNAME}/

WANTLIB += GL GLEW GLU SDL2 SDL2_image c freetype iconv m pcre png pthread
WANTLIB += z ${COMPILER_LIBCXX}

COMPILER =	gcc

CONFIGURE_STYLE =gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

BUILD_DEPENDS =	graphics/glm \
		devel/boost

LIB_DEPENDS =	converters/libiconv \
		graphics/glew \
		devel/pcre \
		devel/sdl2-image

post-install:
	@gzip -d ${PREFIX}/man/man1/logstalgia.1.gz

.include <bsd.port.mk>
