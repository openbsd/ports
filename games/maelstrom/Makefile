# $OpenBSD: Makefile,v 1.3 2010/10/24 21:19:02 ajacoutot Exp $

COMMENT =		asteroid-like game

DISTNAME =		Maelstrom-3.0.6
PKGNAME = 		${DISTNAME:L}p0
CATEGORIES =		games x11
HOMEPAGE =		http://www.devolution.com/~slouken/Maelstrom/
MASTER_SITES =		${HOMEPAGE}/src/

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE = 	gnu

WANTLIB =		SDL c m pthread stdc++
LIB_DEPENDS =		SDL_net::devel/sdl-net

pre-configure:
	@perl -pi -e 's,	Maelstrom,	maelstrom,g' ${WRKSRC}/README.network

.include <bsd.port.mk>
