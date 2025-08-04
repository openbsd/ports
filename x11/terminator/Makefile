COMMENT =		GTK3 terminal emulator with split-window and tabs support

VERSION =		2.1.5
DISTNAME =		terminator-${VERSION}

CATEGORIES =		x11

HOMEPAGE =		https://gnome-terminator.org

# GPLv2
PERMIT_PACKAGE=	Yes

SITES =			https://github.com/gnome-terminator/terminator/releases/download/v${VERSION}/

MODULES =		lang/python \
			textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/gsettings-desktop-schemas \
			devel/libnotify \
			devel/py-configobj \
			devel/py-gobject3 \
			devel/vte3 \
			graphics/py-cairo \
			sysutils/py-psutil \
			x11/dbus-python \
			x11/gtk+3 \
			x11/gtk+4,-guic \
			x11/keybinder3

MODPY_PYBUILD =		setuptools

# --single-version-externally-managed option used by MODPY doesn't exist
MODPY_DISTUTILS_INSTALL = install --prefix=${LOCALBASE} --root=${DESTDIR}

.include <bsd.port.mk>
