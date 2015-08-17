# $OpenBSD: Makefile,v 1.14 2015/08/17 19:10:12 sthen Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT =		open source alternative to glut
DISTNAME =		freeglut-2.8.0
REVISION =		3
SHARED_LIBS =		glut 5.0
CATEGORIES =		graphics
HOMEPAGE =		http://freeglut.sourceforge.net/
MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# X11
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xi Xrandr
WANTLIB += Xrender Xxf86vm drm glapi m pthread pthread-stubs stdc++
WANTLIB += usbhid xcb xcb-dri2 xcb-glx

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freeglut/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-warnings=no
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
