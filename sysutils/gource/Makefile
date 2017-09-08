# $OpenBSD: Makefile,v 1.14 2017/09/08 13:30:35 gonzalo Exp $

COMMENT =	software version control visualization tool

DISTNAME =	gource-0.46
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://gource.io/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/acaudwell/Gource/releases/download/${DISTNAME}/

CONFIGURE_STYLE =	gnu noman
COMPILER =		gcc


WANTLIB += GL GLEW GLU SDL2 SDL2_image boost_filesystem boost_system
WANTLIB += c freetype m pcre png pthread z ${COMPILER_LIBCXX}

BUILD_DEPENDS =		graphics/glm
LIB_DEPENDS =           devel/boost \
			devel/pcre \
			devel/sdl2-image \
			graphics/glew \
                        print/freetype

post-install:
	@gzip -d ${PREFIX}/man/man1/gource.1.gz

.include <bsd.port.mk>
