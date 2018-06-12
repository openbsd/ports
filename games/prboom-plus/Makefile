# $OpenBSD: Makefile,v 1.4 2018/06/12 06:07:29 bentley Exp $

COMMENT = 	enhanced version the PrBoom Doom engine
DISTNAME =	prboom-plus-2.5.1.4
CATEGORIES =	games x11

HOMEPAGE =	http://prboom-plus.sourceforge.net/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

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
