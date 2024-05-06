COMMENT=		GTD organizer for GNOME

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		gtg-${MODPY_EGG_VERSION}
EXTRACT_SUFX =		.tar.xz
REVISION =		2

CATEGORIES =		productivity

HOMEPAGE =		https://wiki.gnome.org/Apps/GTG

# GPLv3+
PERMIT_PACKAGE=		Yes

SITES =			https://github.com/getting-things-gnome/gtg/releases/download/v${MODPY_EGG_VERSION:R}/

MODULES =		devel/meson \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			textproc/itstool \
			textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/py-liblarch${MODPY_FLAVOR} \
			devel/py-xdg${MODPY_FLAVOR} \
			productivity/py-caldav${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gnome/libsecret \
			x11/gtk+4,-guic \
			x11/gtksourceview4

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}
TEST_TARGET =		tests

.include <bsd.port.mk>
