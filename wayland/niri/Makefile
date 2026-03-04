COMMENT =	scrollable-tiling Wayland compositor

PKGNAME =	niri-25.11.20260220
REVISION =	0

# Use https://github.com/tobhe/niri/tree/openbsd-port until all
# the dependency fixes have propagated to the actual rust packages
DIST_TUPLE +=	github tobhe niri 097810ed0e7ef944fa7bca0947f41b9c34cd89f4 .
DIST_TUPLE +=	github tobhe drm-rs ea05145076d7b81c1b99656923e6ee539590d654 .
DIST_TUPLE +=	github tobhe smithay adf3bfddc019c8950deb650f4ed442c0312e0ea8 .
DIST_TUPLE +=	github tobhe polling e838a159551ccbdc7a4c39a51fa36430615f8d34 .

MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =

CATEGORIES =	wayland

MAINTAINER =	Tobias Heider <tobhe@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE = Yes

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

BUILD_DEPENDS =	wayland/wayland-protocols

LIB_DEPENDS =	devel/pango \
		devel/glib2 \
		graphics/cairo \
		sysutils/libdisplay-info \
		sysutils/libudev-openbsd \
		sysutils/seatd \
		wayland/libinput-openbsd \
		x11/xkbcommon

RUN_DEPENDS =	devel/desktop-file-utils \
		wayland/foot \
		wayland/wofi \
		wayland/xwayland-satellite

WANTLIB =	${MODCARGO_WANTLIB}
WANTLIB +=	cairo display-info gbm glib-2.0 gobject-2.0 input m
WANTLIB +=	pango-1.0 pangocairo-1.0 pixman-1 seat udev xkbcommon

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/niri
	${INSTALL_DATA} ${WRKSRC}/resources/default-config.kdl ${PREFIX}/share/examples/niri
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/resources/niri.desktop ${PREFIX}/share/applications
	${INSTALL_SCRIPT} ${FILESDIR}/startniri.sh ${PREFIX}/bin

.include "crates.inc"
.include <bsd.port.mk>
