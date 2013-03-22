# $OpenBSD: Makefile,v 1.4 2013/03/22 15:13:07 gonzalo Exp $

COMMENT =	software version control visualization tool

DISTNAME =	gource-0.39
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://gource.googlecode.com/

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/files/

CONFIGURE_STYLE =	gnu noman

WANTLIB += GL GLEW GLU SDL SDL_image boost_filesystem boost_system
WANTLIB += c freetype m pcre pthread stdc++ z

LIB_DEPENDS =           devel/boost \
			devel/pcre \
			devel/sdl-image \
			graphics/glew \
			graphics/glm \
                        print/freetype

post-install:
	@gzip -d ${PREFIX}/man/man1/gource.1.gz

.include <bsd.port.mk>
