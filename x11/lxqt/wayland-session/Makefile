COMMENT =	wayland session manager for LXQt

NAME =		lxqt-wayland-session
VERSION =	0.4.0

# looks for lxqt-config.cmake & xdg-user-dirs-update
BUILD_DEPENDS +=	x11/lxqt/liblxqt
BUILD_DEPENDS +=	devel/xdg-user-dirs

# incomplete list of supported wayland compositors, defaulting to labwc
RUN_DEPENDS =	labwc-*|niri-*|wayfire-*|sway-*:wayland/labwc

.include <bsd.port.mk>
