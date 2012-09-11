# $OpenBSD: Makefile,v 1.7 2012/09/11 10:07:06 sthen Exp $

COMMENT =		open source alternative to glut
DISTNAME =		freeglut-2.8.0
SHARED_LIBS =		glut 5.0
CATEGORIES =		graphics
HOMEPAGE =		http://freeglut.sourceforge.net/
MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# X11
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xdamage Xext Xfixes Xi Xrandr Xrender Xxf86vm
WANTLIB += drm m stdc++ usbhid xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freeglut/}

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-warnings=no
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"

NO_REGRESS =		Yes

.include <bsd.port.mk>
