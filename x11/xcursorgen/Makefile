# $OpenBSD: Makefile,v 1.30 2017/09/25 21:33:09 sthen Exp $

COMMENT =	X11 Cursors themes generator
DISTNAME =	xcursorgen-1.0.6
CATEGORIES =	x11
REVISION =	0
EPOCH =	0

HOMEPAGE =	http://wiki.X.Org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

LIB_DEPENDS =	graphics/png

# X11
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		Xcursor X11 c png z

MASTER_SITES =	${MASTER_SITE_XORG:=app/}

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
