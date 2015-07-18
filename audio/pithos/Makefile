# $OpenBSD: Makefile,v 1.13 2015/07/18 14:33:50 jasper Exp $

GH_ACCOUNT =	pithos
GH_PROJECT =	pithos
GH_TAGNAME =	1.1.1

COMMENT =	Pandora client for GNOME
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES =	audio x11
SUBST_VARS +=	GH_TAGNAME

HOMEPAGE =	http://pithos.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Github page says GPLv3+
# But the code says GPLv3 only
# pithos/pandora/blowfish.py: AGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	audio/py-last${MODPY_FLAVOR}>=0.5.11 \
		devel/desktop-file-utils \
		devel/libnotify \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/py-xdg${MODPY_FLAVOR} \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-bad \
		multimedia/gstreamer1/plugins-libav \
		x11/dbus-python${MODPY_FLAVOR} \
		x11/keybinder3 \
		x11/gtk+3,-guic

TEST_DEPENDS =	audio/py-last${MODPY_FLAVOR}>=0.5.11

pre-configure:
	sed -i "s,/usr/s,s,g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
