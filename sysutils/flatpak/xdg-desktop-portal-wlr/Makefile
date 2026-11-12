COMMENT=		xdg-desktop-portal backend for wlroots

V=			0.9.0
DISTNAME=		xdg-desktop-portal-wlr-${V}

CATEGORIES=		x11

HOMEPAGE=		https://github.com/emersion/xdg-desktop-portal-wlr

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += basu c drm epoll-shim gbm inih pipewire-0.3 wayland-client

SITES=			https://github.com/emersion/xdg-desktop-portal-wlr/releases/download/v${V}/

MODULES=		devel/meson

BUILD_DEPENDS=		textproc/scdoc \
			wayland/wayland-protocols

LIB_DEPENDS=		devel/epoll-shim \
			multimedia/pipewire/pipewire,-libs \
			sysutils/basu \
			textproc/libinih \
			wayland/wayland

RUN_DEPENDS=		sysutils/flatpak/xdg-desktop-portal \
			wayland/grim

CONFIGURE_ARGS=		-Dsd-bus-provider=basu \
			-Dsystemd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA} ${WRKSRC}/contrib/wlroots-portals.conf \
		${PREFIX}/share/xdg-desktop-portal/

.include <bsd.port.mk>
