# $OpenBSD: Makefile,v 1.3 2017/05/06 14:10:16 espie Exp $

COMMENT =	open source, multi-platform library for creating windows
DISTNAME =	glfw-3.2.1
CATEGORIES =	graphics x11
REVISION =	0

SHARED_LIBS +=  glfw                      1.0 # 3.1

HOMEPAGE =	http://www.glfw.org/
MAINTAINER =	Gregor Best <gbe@unobtanium.de>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcursor Xinerama Xrandr Xxf86vm m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=glfw/}

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include"

NO_TEST =	Yes

.include <bsd.port.mk>
