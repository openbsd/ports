# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:25 pascal Exp $

COMMENT =	website access log visualization

DISTNAME =	logstalgia-1.0.6
REVISION =	1
CATEGORIES =	sysutils graphics
HOMEPAGE =	https://code.google.com/p/logstalgia/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/acaudwell/Logstalgia/releases/download/${DISTNAME}/

WANTLIB += GL GLEW GLU SDL SDL_image c freetype m pcre png pthread
WANTLIB += z

MODULES =	converters/libiconv \
		gcc4
MODGCC4_ARCHS = *
MODGCC4_LANGS = c c++

CONFIGURE_STYLE =gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

BUILD_DEPENDS =	graphics/glm \
		devel/boost

LIB_DEPENDS =	graphics/glew \
		devel/pcre \
		devel/sdl-image

post-install:
	@gzip -d ${PREFIX}/man/man1/logstalgia.1.gz

.include <bsd.port.mk>
