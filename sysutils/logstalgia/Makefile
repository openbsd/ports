# $OpenBSD: Makefile,v 1.1.1.1 2011/10/20 10:58:21 jasper Exp $

COMMENT =	website access log visualization

DISTNAME =	logstalgia-1.0.3
CATEGORIES =	sysutils graphics
HOMEPAGE =	http://code.google.com/p/logstalgia/

MAINTAINER =	Gonzalo L. R. <gonzalo@x61.com.ar>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://logstalgia.googlecode.com/files/

WANTLIB += ftgl GL GLU SDL SDL_image c jpeg m pcre png pthread stdc++

MODULES =	converters/libiconv

CONFIGURE_STYLE =gnu

LIB_DEPENDS =	graphics/ftgl \
		devel/pcre \
		devel/sdl-image

USE_GROFF =	Yes

post-install:
	@gzip -d ${PREFIX}/man/man1/logstalgia.1.gz

.include <bsd.port.mk>
