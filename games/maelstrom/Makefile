# $OpenBSD: Makefile,v 1.13 2019/07/31 16:36:47 cwen Exp $

COMMENT =		asteroid-like game

DISTNAME =		Maelstrom-3.0.6
PKGNAME = 		${DISTNAME:L}
REVISION =		4
CATEGORIES =		games x11
HOMEPAGE =		http://www.devolution.com/~slouken/Maelstrom/
MASTER_SITES =		${HOMEPAGE}/src/

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE = 	gnu

WANTLIB =		SDL c m pthread ${COMPILER_LIBCXX} SDL_net
COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl-net

pre-configure:
	@perl -pi -e 's,	Maelstrom,	maelstrom,g' ${WRKSRC}/README.network

.include <bsd.port.mk>
