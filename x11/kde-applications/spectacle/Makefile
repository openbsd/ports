BROKEN =	Missinf KPipeWire
COMMENT =	KDE screen capture and screenshot program
DISTNAME =	spectacle-${VERSION}
CATEGORIES =	x11

HOMEPAGE =	https://apps.kde.org/spectacle/

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

MODULES +=	lang/python

BUILD_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols


post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/share/kconf_update/50-clipboard_settings_change.py

.include <bsd.port.mk>
