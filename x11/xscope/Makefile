# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:30 sthen Exp $

COMMENT =	X Window Protocol Viewer
DISTNAME =	xscope-1.4.1
CATEGORIES =	x11

HOMEPAGE =	http://wiki.X.Org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# X11
PERMIT_PACKAGE =		Yes

MASTER_SITES =	${MASTER_SITE_XORG:=app/}

WANTLIB =		c

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
