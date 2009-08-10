# $OpenBSD: Makefile,v 1.2 2009/08/10 06:31:42 kili Exp $

COMMENT =	tuxkart is a simple Go-Kart racing game.

DISTNAME =	tuxkart-0.4.0
PKGNAME =	${DISTNAME}p0
CATEGORIES =	games

HOMEPAGE =	http://tuxkart.sourceforge.net/
MASTER_SITES =	${HOMEPAGE}/dist/

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL ICE SM X11 Xext Xi Xmu c m pthread pthread-stubs \
			stdc++ xcb

BUILD_DEPENDS =		::devel/plib

USE_X11 =		Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
