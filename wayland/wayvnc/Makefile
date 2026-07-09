COMMENT =	VNC server for wlroots based Wayland compositors

DIST_TUPLE =	github any1 wayvnc v0.10.1 .

CATEGORIES =	wayland net

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += aml c drm gbm jansson m neatvnc pixman-1 wayland-client
WANTLIB += xkbcommon

MODULES =	devel/meson

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	textproc/scdoc \
		wayland/libinput-openbsd

LIB_DEPENDS =	devel/aml \
		devel/jansson \
		net/neatvnc \
		x11/xkbcommon \
		wayland/wayland

CONFIGURE_ARGS +=	-Dpam=disabled

.include <bsd.port.mk>
