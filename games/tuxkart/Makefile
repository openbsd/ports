# $OpenBSD: Makefile,v 1.7 2013/08/09 19:04:49 ajacoutot Exp $

COMMENT =	tuxkart is a simple Go-Kart racing game.

DISTNAME =	tuxkart-0.4.0
REVISION =	2
CATEGORIES =	games

HOMEPAGE =	http://tuxkart.sourceforge.net/
MASTER_SITES =	${HOMEPAGE}/dist/

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL ICE SM X11 Xext Xi Xmu c m pthread pthread-stubs \
			sndio stdc++ xcb

BUILD_DEPENDS =		devel/plib

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lsndio"

.include <bsd.port.mk>
