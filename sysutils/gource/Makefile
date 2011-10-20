# $OpenBSD: Makefile,v 1.1.1.1 2011/10/20 10:56:59 jasper Exp $

COMMENT =	software version control visualization tool

DISTNAME =	gource-0.37
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://gource.googlecode.com/

MAINTAINER =	Gonzalo L. R. <gonzalo@x61.com.ar>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}/files/

CONFIGURE_STYLE =	gnu noman

WANTLIB += GL GLEW GLU SDL SDL_image c freetype m pcre pthread
WANTLIB += stdc++ z

LIB_DEPENDS =           devel/pcre \
			devel/sdl-image \
			graphics/glew \
                        print/freetype

USE_GROFF =		Yes

post-install:
	@gzip -d ${PREFIX}/man/man1/gource.1.gz

.include <bsd.port.mk>
