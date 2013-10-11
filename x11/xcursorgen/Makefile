# $OpenBSD: Makefile,v 1.26 2013/10/11 23:51:56 naddy Exp $

COMMENT =	X11 Cursors themes generator
DIST_VERS =	1.0.4
XORG_VERS =	7.6
DISTNAME =	xcursorgen-${DIST_VERS}
PKGNAME =	xcursorgen-${XORG_VERS}
CATEGORIES =	x11

HOMEPAGE =	http://wiki.X.Org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

LIB_DEPENDS =	graphics/png

# X11
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	ftp://ftp.x.org/pub/individual/app/ \
		ftp://x.mirrors.skynet.be/pub/ftp.x.org/pub/X11R${XORG_VERS}/src/app/

WANTLIB =		Xcursor X11 c m png z

SEPARATE_BUILD = 	Yes
AUTOCONF_VERSION =	2.65
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
