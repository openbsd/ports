# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:23 sthen Exp $

COMMENT = 	enhanced version the PrBoom Doom engine
DISTNAME =	prboom-plus-2.5.1.4
CATEGORIES =	games x11
REVISION =	0

HOMEPAGE =	http://prboom-plus.sourceforge.net/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

# undefined reference to `__builtin_bswap32'
# requires gcc >= 4.3 for gcc4 archs.
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =	archivers/unzip

WANTLIB += SDL c m pthread GL GLU SDL_mixer SDL_net

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=prboom-plus/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-waddir=${TRUEPREFIX}/share/doom
CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS} -I${X11BASE}/include"

FAKE_FLAGS +=	gamesdir=${PREFIX}/bin \
		docdir=${PREFIX}/share/doc/prboom-plus

.include <bsd.port.mk>
