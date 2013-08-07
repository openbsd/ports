# $OpenBSD: Makefile,v 1.4 2013/08/07 21:32:37 naddy Exp $

COMMENT =	website access log visualization

DISTNAME =	logstalgia-1.0.3
REVISION =	0
CATEGORIES =	sysutils graphics
HOMEPAGE =	https://code.google.com/p/logstalgia/

MAINTAINER =	Gonzalo L. R. <gonzalo@x61.com.ar>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://logstalgia.googlecode.com/files/

WANTLIB += ftgl GL GLU SDL SDL_image c jpeg m pcre png pthread stdc++

MODULES =	converters/libiconv

CONFIGURE_STYLE =gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

LIB_DEPENDS =	graphics/ftgl \
		devel/pcre \
		devel/sdl-image

USE_GROFF =	Yes

post-install:
	@gzip -d ${PREFIX}/man/man1/logstalgia.1.gz

.include <bsd.port.mk>
