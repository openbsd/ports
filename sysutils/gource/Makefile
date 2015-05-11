# $OpenBSD: Makefile,v 1.6 2015/05/11 13:47:28 gonzalo Exp $

COMMENT =	software version control visualization tool

DISTNAME =	gource-0.43
CATEGORIES =	sysutils graphics
HOMEPAGE =	https://gource.googlecode.com/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/acaudwell/Gource/releases/download/${DISTNAME}/

CONFIGURE_STYLE =	gnu noman

MODULES =		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

WANTLIB += GL GLEW GLU SDL SDL_image boost_filesystem boost_system
WANTLIB += c freetype m pcre png pthread z

LIB_DEPENDS =           devel/boost \
			devel/pcre \
			devel/sdl-image \
			graphics/glew \
			graphics/glm \
                        print/freetype

post-install:
	@gzip -d ${PREFIX}/man/man1/gource.1.gz

.include <bsd.port.mk>
