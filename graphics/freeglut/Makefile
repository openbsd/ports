# $OpenBSD: Makefile,v 1.8 2013/03/11 11:10:52 espie Exp $

COMMENT =		open source alternative to glut
DISTNAME =		freeglut-2.8.0
SHARED_LIBS =		glut 5.0
CATEGORIES =		graphics
HOMEPAGE =		http://freeglut.sourceforge.net/
MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# X11
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xdamage Xext Xfixes Xi Xrandr Xrender Xxf86vm
WANTLIB += drm m stdc++ usbhid xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freeglut/}

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-warnings=no
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
