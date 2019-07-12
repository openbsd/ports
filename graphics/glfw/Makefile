# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:59 sthen Exp $

COMMENT =	open source, multi-platform library for creating windows
DISTNAME =	glfw-3.2.1
CATEGORIES =	graphics x11
REVISION =	0

SHARED_LIBS +=  glfw                      1.0 # 3.1

HOMEPAGE =	http://www.glfw.org/
MAINTAINER =	Gregor Best <gbe@unobtanium.de>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcursor Xinerama Xrandr Xxf86vm m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=glfw/}

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include"

NO_TEST =	Yes

.include <bsd.port.mk>
