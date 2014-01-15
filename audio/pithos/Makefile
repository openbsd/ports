# $OpenBSD: Makefile,v 1.2 2014/01/15 16:49:12 bcallah Exp $

GH_VER =	0.3.18
COMMENT =	Pandora client for GNOME
DISTNAME =	pithos-${GH_VER}
REVISION =	0
DISTFILES =	${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}
CATEGORIES =	audio x11

HOMEPAGE =	http://pithos.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Github page says GPLv3+
# But the code says GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/pithos/pithos/archive/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	audio/py-last>=0.5.11 \
		devel/desktop-file-utils \
		devel/py-notify \
		devel/py-xdg \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/py-gstreamer \
		x11/dbus-python \
		x11/gtk+2,-guic \
		x11/py-gtk2

TEST_DEPENDS =	audio/py-last>=0.5.11

post-patch:
	perl -pi -e "s,/usr/s,s,g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
