# $OpenBSD: Makefile,v 1.2 2013/05/01 19:31:25 naddy Exp $

COMMENT =		vertical shoot-em-up with nontraditional elements

DISTNAME =		garden-1.0.8
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://garden.sourceforge.net

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xpm Xrender Xxf86dga Xxf86vm
WANTLIB += alleg c m pthread sndio xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=garden/}

BUILD_DEPENDS =		devel/desktop-file-utils
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		games/allegro

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
