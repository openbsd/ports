# $OpenBSD: Makefile,v 1.18 2018/06/14 08:21:26 gonzalo Exp $

COMMENT =	website access log visualization

DISTNAME =	logstalgia-1.1.2
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://logstalgia.io/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/acaudwell/Logstalgia/releases/download/${DISTNAME}/

WANTLIB += GL GLEW GLU SDL2 SDL2_image c freetype m pcre png
WANTLIB += z ${COMPILER_LIBCXX}

CONFIGURE_STYLE =gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

# -std=gnu++0x
COMPILER =	base-clang ports-gcc ports-clang

BUILD_DEPENDS =	graphics/glm \
		devel/boost

LIB_DEPENDS =	graphics/glew \
		devel/pcre \
		devel/sdl2-image

post-install:
	@gzip -d ${PREFIX}/man/man1/logstalgia.1.gz

.include <bsd.port.mk>
