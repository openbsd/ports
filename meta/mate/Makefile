# $OpenBSD: Makefile,v 1.5 2020/03/21 16:14:53 robert Exp $

COMMENT-main =		MATE desktop meta-package (base installation)
COMMENT-extras =	MATE desktop meta-package (full installation)

CATEGORIES =		meta x11

V =			1.24
PKGNAME =		mate-${V}

PKGNAME-main =		mate-${V}
PKGNAME-extras =	mate-extras-${V}

MULTI_PACKAGES =	-main -extras

RUN_DEPENDS-main += \
		x11/mate/caja \
		x11/mate/desktop \
		x11/mate/marco \
		x11/mate/menus \
		x11/mate/panel \
		x11/mate/polkit \
		x11/mate/session-manager \
		x11/mate/settings-daemon \
		sysutils/consolekit \
		x11/dbus

# theme packages
RUN_DEPENDS-main += \
		x11/mate/icon-theme \
		x11/mate/media \
		x11/mate/themes

# common apps
RUN_DEPENDS-main += \
		x11/mate/terminal \
		x11/mate/power-manager \
		x11/mate/libmatemixer \
		x11/mate/libmatekbd \
		x11/mate/notification-daemon \
		x11/mate/screensaver

# extra apps
RUN_DEPENDS-extras += \
		x11/mate/atril \
		x11/mate/caja-extensions \
		x11/mate/calc \
		x11/mate/control-center \
		x11/mate/engrampa \
		x11/mate/eom \
		x11/mate/libmateweather \
		x11/mate/pluma \
		x11/mate/system-monitor \
		x11/mate/utils

.include <bsd.port.mk>
