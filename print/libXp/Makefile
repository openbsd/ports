# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:55 sthen Exp $

COMMENT =		X11 printing system

DISTNAME =		libXp-1.0.1
REVISION =		1

SHARED_LIBS +=  Xp                        11.0

CATEGORIES =		print devel x11

HOMEPAGE =		http://xprint.mozdev.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xau Xext xcb

MASTER_SITES =		https://www.x.org/archive/individual/lib/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		print/xprintproto

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
