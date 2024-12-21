COMMENT=		GTD organizer for GNOME

MODPY_DISTV =	0.6.0
DISTNAME =		gtg-${MODPY_DISTV}
EXTRACT_SUFX =		.tar.xz
REVISION =		5

CATEGORIES =		productivity

# GPLv3+
PERMIT_PACKAGE=		Yes

SITES =			https://github.com/getting-things-gnome/gtg/releases/download/v${MODPY_DISTV:R}/

MODULES =		devel/meson \
			lang/python

BUILD_DEPENDS =		devel/gettext,-tools \
			textproc/itstool \
			textproc/py-sphinx

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-dateutil \
			devel/py-gobject3 \
			devel/py-liblarch \
			devel/py-xdg \
			productivity/py-caldav \
			textproc/py-lxml \
			x11/dbus-python \
			x11/gnome/libsecret \
			x11/gtk+4,-guic \
			x11/gtksourceview4

TEST_DEPENDS =		devel/py-nose \
			devel/py-mock
TEST_TARGET =		tests

.include <bsd.port.mk>
