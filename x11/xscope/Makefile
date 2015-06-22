# $OpenBSD: Makefile,v 1.2 2015/06/22 20:15:32 naddy Exp $

COMMENT =	X Window Protocol Viewer
DISTNAME =	xscope-1.4.1
CATEGORIES =	x11

HOMEPAGE =	http://wiki.X.Org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_XORG:=app/}

WANTLIB =		c

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
