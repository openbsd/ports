#	$OpenBSD: Makefile,v 1.13 2015/06/22 20:15:32 naddy Exp $

COMMENT =	X11 Cursors themes
DISTNAME =	xcursor-themes-1.0.4
CATEGORIES =	x11

HOMEPAGE =	http://wiki.X.Org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

BUILD_DEPENDS =	x11/xcursorgen>=7

# X11
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_XORG:=data/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LOCALBASE="${LOCALBASE}"
CONFIGURE_ARGS =	--with-cursordir=${LOCALBASE}/lib/X11/icons

NO_TEST =		Yes

.include <bsd.port.mk>
