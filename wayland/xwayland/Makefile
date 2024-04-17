COMMENT =	X server running as wayland application

DISTNAME =	xwayland-23.2.6

CATEGORIES =	wayland

HOMEPAGE =	https://gitlab.freedesktop.org/xorg/xserver

MAINTAINER =	matthieu@openbsd.org

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		GL Xau Xdmcp Xfont2 gbm xcvt drm kvm pthread c m
WANTLIB +=		pixman-1 xshmfence ei epoxy wayland-client

SITES =			${SITE_XORG:=xserver/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

BUILD_DEPENDS =		wayland/libinput-openbsd \
			wayland/wayland-protocols

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		wayland/wayland \
			wayland/libei

SEPARATE_BUILD =	yes

CONFIGURE_ARGS =	-Dxdm-auth-1=false \
			-Dsecure-rpc=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	rm -r ${PREFIX}/lib/xorg
	rm ${PREFIX}/man/man1/Xserver.1

.include <bsd.port.mk>
