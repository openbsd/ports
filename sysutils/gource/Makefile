# $OpenBSD: Makefile,v 1.8 2015/12/28 18:56:33 jasper Exp $

COMMENT =	software version control visualization tool

DISTNAME =	gource-0.43
REVISION =	1
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://gource.io/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/acaudwell/Gource/releases/download/${DISTNAME}/

CONFIGURE_STYLE =	gnu noman

MODULES =		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

WANTLIB += GL GLEW GLU SDL2 SDL2_image boost_filesystem boost_system
WANTLIB += c freetype m pcre png pthread z

BUILD_DEPENDS =		graphics/glm
LIB_DEPENDS =           devel/boost \
			devel/pcre \
			devel/sdl2-image \
			graphics/glew \
                        print/freetype

post-install:
	@gzip -d ${PREFIX}/man/man1/gource.1.gz

.include <bsd.port.mk>
