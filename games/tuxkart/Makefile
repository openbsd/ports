# $OpenBSD: Makefile,v 1.14 2019/07/17 14:49:22 danj Exp $

COMMENT =	tuxkart is a simple Go-Kart racing game.

DISTNAME =	tuxkart-0.4.0
REVISION =	6
CATEGORIES =	games

HOMEPAGE =	http://tuxkart.sourceforge.net/
MASTER_SITES =	${HOMEPAGE}/dist/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		GL ICE SM X11 Xext Xi Xmu c m pthread \
			sndio ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/plib

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lsndio"

.include <bsd.port.mk>
