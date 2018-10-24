# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:04 sthen Exp $

COMMENT =	tuxkart is a simple Go-Kart racing game.

DISTNAME =	tuxkart-0.4.0
REVISION =	5
CATEGORIES =	games

HOMEPAGE =	http://tuxkart.sourceforge.net/
MASTER_SITES =	${HOMEPAGE}/dist/

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

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
