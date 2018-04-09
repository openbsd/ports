# $OpenBSD: Makefile,v 1.10 2018/04/09 16:35:38 jasper Exp $

COMMENT =		asteroid-like game

DISTNAME =		Maelstrom-3.0.6
PKGNAME = 		${DISTNAME:L}
REVISION =		2
CATEGORIES =		games x11
HOMEPAGE =		http://www.devolution.com/~slouken/Maelstrom/
MASTER_SITES =		${HOMEPAGE}/src/

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE = 	gnu

WANTLIB =		SDL c m pthread ${COMPILER_LIBCXX} SDL_net
LIB_DEPENDS =		devel/sdl-net

pre-configure:
	@perl -pi -e 's,	Maelstrom,	maelstrom,g' ${WRKSRC}/README.network

.include <bsd.port.mk>
