# $OpenBSD: Makefile,v 1.5 2015/05/03 10:49:48 bentley Exp $

COMMENT =		vertical shoot-em-up with nontraditional elements

DISTNAME =		garden-1.0.9

CATEGORIES =		games

HOMEPAGE =		http://garden.sourceforge.net

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xpm Xrender Xxf86dga Xxf86vm
WANTLIB += alleg c m pthread sndio xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=garden/}

BUILD_DEPENDS =		devel/desktop-file-utils
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		games/allegro

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
