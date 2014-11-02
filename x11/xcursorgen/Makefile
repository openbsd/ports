# $OpenBSD: Makefile,v 1.28 2014/11/02 13:32:04 matthieu Exp $

COMMENT =	X11 Cursors themes generator
DISTNAME =	xcursorgen-1.0.6
CATEGORIES =	x11
EPOCH =	0

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
