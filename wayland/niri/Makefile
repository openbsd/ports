COMMENT =	A scrollable-tiling Wayland compositor

V =		25.11.20260211

# Use https://github.com/tobhe/niri/tree/openbsd-port until all
# the dependency fixes have propagated to the actual rust packages
GH_ACCOUNT = tobhe
GH_PROJECT = niri
GH_COMMIT = f541ac5db09db311ec5444d8e4293588f10f1b8f
DISTNAME = ${GH_PROJECT}-${V}

# Bundled dependencies
SITES += ${SITES_GITHUB}
DISTFILES = ${GH_DISTFILE}

EXTRACT_SUFX = .tar.gz

DRM_COMMIT = e32b22b505ffbe4a4b5476d66100ca3fe0b973f7
SITES.drm = https://github.com/tobhe/drm-rs/archive/
DISTFILES.drm = drm-rs-${DRM_COMMIT:C/(........).*/\1/}{${DRM_COMMIT}}${EXTRACT_SUFX}

SMITHAY_COMMIT = 95c73b3e06ab9f83f7a1a886f31e8da2215ee1cd
SITES.smithay = https://github.com/tobhe/smithay/archive/
DISTFILES.smithay += smithay-${SMITHAY_COMMIT:C/(........).*/\1/}{${SMITHAY_COMMIT}}${EXTRACT_SUFX}

POLLING_COMMIT = ade9e50967a17e32228597ad756fff8965a42a01
SITES.polling = https://github.com/tobhe/polling/archive/
DISTFILES.polling += polling-${POLLING_COMMIT:C/(........).*/\1/}{${POLLING_COMMIT}}${EXTRACT_SUFX}

MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =

CATEGORIES =	wayland

MAINTAINER =	Tobias Heider <tobhe@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE = Yes

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

BUILD_DEPENDS = wayland/wayland-protocols

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
		wayland/wofi

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
