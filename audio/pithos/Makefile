# $OpenBSD: Makefile,v 1.4 2014/07/10 11:06:15 rpe Exp $

GH_ACCOUNT =	pithos
GH_PROJECT =	pithos
GH_TAGNAME =	0.3.18
GH_COMMIT =	077021008f0f90204fcbd6201e7612d9394737d7

COMMENT =	Pandora client for GNOME
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
REVISION =	1
CATEGORIES =	audio x11

HOMEPAGE =	http://pithos.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Github page says GPLv3+
# But the code says GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

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
		x11/keybinder,-python \
		x11/py-gtk2

TEST_DEPENDS =	audio/py-last>=0.5.11

post-patch:
	perl -pi -e "s,/usr/s,s,g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
