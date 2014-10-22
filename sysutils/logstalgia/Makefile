# $OpenBSD: Makefile,v 1.5 2014/10/22 15:02:25 gonzalo Exp $

COMMENT =	website access log visualization

DISTNAME =	logstalgia-1.0.6
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

LIB_DEPENDS =	graphics/ftgl \
		graphics/glew \
		graphics/glm \
		devel/boost \
		devel/pcre \
		devel/sdl-image

post-install:
	@gzip -d ${PREFIX}/man/man1/logstalgia.1.gz

.include <bsd.port.mk>
