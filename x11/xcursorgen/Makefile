# $OpenBSD: Makefile,v 1.29 2015/06/22 20:15:32 naddy Exp $

COMMENT =	X11 Cursors themes generator
DISTNAME =	xcursorgen-1.0.6
CATEGORIES =	x11
EPOCH =	0

HOMEPAGE =	http://wiki.X.Org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

LIB_DEPENDS =	graphics/png

# X11
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_XORG:=app/}

WANTLIB =		Xcursor X11 c png

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
