# $OpenBSD: Makefile,v 1.5 2021/01/29 14:31:30 kmos Exp $

COMMENT =	open source, multi-platform library for creating windows
V =		3.3.2
DISTNAME =	glfw-${V}
CATEGORIES =	graphics x11

SHARED_LIBS +=  glfw                      1.1 # 3.1

HOMEPAGE =	http://www.glfw.org/
MAINTAINER =	Gregor Best <gbe@unobtanium.de>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcursor Xinerama Xrandr Xxf86vm m pthread

MASTER_SITES =	https://github.com/glfw/glfw/releases/download/${V}/
EXTRACT_SUFX =	.zip

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include"

NO_TEST =	Yes

.include <bsd.port.mk>
