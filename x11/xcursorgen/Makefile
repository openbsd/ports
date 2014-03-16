# $OpenBSD: Makefile,v 1.27 2014/03/16 21:57:55 matthieu Exp $

COMMENT =	X11 Cursors themes generator
DIST_VERS =	1.0.5
XORG_VERS =	7.7
DISTNAME =	xcursorgen-${DIST_VERS}
PKGNAME =	xcursorgen-${XORG_VERS}
CATEGORIES =	x11

HOMEPAGE =	http://wiki.X.Org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

LIB_DEPENDS =	graphics/png

# X11
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://ftp.x.org/pub/individual/app/ \
		ftp://ftp.x.org/pub/individual/app/ \

WANTLIB =		Xcursor X11 c png

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
