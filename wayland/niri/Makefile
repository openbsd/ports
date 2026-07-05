COMMENT =	scrollable-tiling Wayland compositor

DIST_TUPLE +=	github niri-wm niri v26.04 niri
DIST_TUPLE +=	github Smithay smithay ff5fa7df392cecfba049ffed55cdaa4e98a8e7ef smithay

WRKDIST =	${WRKDIR}

CATEGORIES =	wayland

MAINTAINER =	Tobias Heider <tobhe@openbsd.org>

# GPLv3+
PERMIT_PACKAGE = Yes

WANTLIB += ${MODCARGO_WANTLIB} cairo display-info gbm glib-2.0
WANTLIB += gobject-2.0 input m pango-1.0 pangocairo-1.0 pipewire-0.3
WANTLIB += pixman-1 seat udev xkbcommon

MODULES =	devel/cargo lang/clang
CONFIGURE_STYLE =	cargo

MODCARGO_CARGOTOML = 	${WRKDIST}/niri/Cargo.toml
MODCARGO_ENV =		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib
MODCARGO_FEATURES = 	dbus xdp-gnome-screencast
MODCARGO_INSTALL_TARGET_PATHS = ./niri
MODCARGO_NO_DEFAULT_FEATURES =	Yes

BUILD_DEPENDS =	wayland/wayland-protocols

LIB_DEPENDS =	devel/glib2 \
		devel/pango \
		graphics/cairo \
		multimedia/pipewire/pipewire,-libs \
		sysutils/libdisplay-info \
		sysutils/libudev-openbsd \
		sysutils/seatd \
		wayland/libinput-openbsd \
		x11/xkbcommon

RUN_DEPENDS =	devel/desktop-file-utils \
		multimedia/pipewire/pipewire \
		wayland/foot \
		wayland/fuzzel \
		wayland/swaylock \
		wayland/xwayland-satellite \
		x11/dbus

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/niri
	${INSTALL_DATA} ${WRKSRC}/niri/resources/default-config.kdl \
		${PREFIX}/share/examples/niri
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/niri/resources/niri.desktop \
		${PREFIX}/share/applications
	${SUBST_CMD} -c -m755 ${FILESDIR}/niri-session \
		${PREFIX}/bin/niri-session
	${INSTALL_DATA_DIR} ${PREFIX}/share/xdg-desktop-portal
	${INSTALL_DATA} ${WRKSRC}/niri/resources/niri-portals.conf \
		${PREFIX}/share/xdg-desktop-portal

.include "crates.inc"
.include <bsd.port.mk>
