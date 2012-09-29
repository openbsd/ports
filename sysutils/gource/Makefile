# $OpenBSD: Makefile,v 1.2 2012/09/29 05:10:43 brad Exp $

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

# gource automake Makefiles are broken; CPPFLAGS does not work.
CFLAGS+=	-I${LOCALBASE}/include

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
