# $OpenBSD: Makefile,v 1.1.1.1 2021/12/08 20:34:13 solene Exp $

COMMENT =		gtk3 audiobook player

GH_ACCOUNT =		geigi
GH_PROJECT =		cozy
GH_TAGNAME =		1.1.2

CATEGORIES =		audio

HOMEPAGE =		https://cozy.sh/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		devel/dconf \
			devel/meson \
			lang/python

COMMON_DEPENDS =	audio/py-mutagen${MODPY_FLAVOR} \
                        databases/py-peewee${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR} \
			sysutils/py-distro${MODPY_FLAVOR} \
			x11/elementary/granite \
			x11/libhandy

BUILD_DEPENDS =		${COMMON_DEPENDS} \
			devel/gettext,-tools

RUN_DEPENDS =		${COMMON_DEPENDS} \
			devel/desktop-file-utils \
			multimedia/gstreamer1/plugins-libav \
			x11/gnome/libdazzle \
			x11/gtk+3,-guic

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}
	ln -s com.github.geigi.cozy ${PREFIX}/bin/cozy

.include <bsd.port.mk>
