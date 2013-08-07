# $OpenBSD: Makefile,v 1.5 2013/08/07 21:32:37 naddy Exp $

COMMENT =	software version control visualization tool

DISTNAME =	gource-0.39
REVISION =	0
CATEGORIES =	sysutils graphics
HOMEPAGE =	https://gource.googlecode.com/

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
