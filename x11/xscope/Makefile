# $OpenBSD: Makefile,v 1.1.1.1 2014/07/13 08:19:53 matthieu Exp $

COMMENT =	X Window Protocol Viewer
DISTNAME =	xscope-1.4.1
CATEGORIES =	x11

HOMEPAGE =	http://wiki.X.Org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://ftp.x.org/pub/individual/app/ \
		ftp://ftp.x.org/pub/individual/app/ \

WANTLIB =		c

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
