# $OpenBSD: Makefile,v 1.1.1.1 2013/04/21 03:30:08 bentley Exp $

COMMENT =		vertical shoot-em-up with nontraditional elements

DISTNAME =		garden-1.0.8

CATEGORIES =		games

HOMEPAGE =		http://garden.sourceforge.net

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xpm Xrender Xxf86dga Xxf86vm
WANTLIB += alleg c m pthread sndio xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=garden/}

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		games/allegro

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
