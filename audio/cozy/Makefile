COMMENT =		gtk3 audiobook player

GH_ACCOUNT =		geigi
GH_PROJECT =		cozy
GH_TAGNAME =		1.3.0
REVISION =		1

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
			x11/gnome/libadwaita

BUILD_DEPENDS =		${COMMON_DEPENDS} \
			devel/gettext,-tools

RUN_DEPENDS =		${COMMON_DEPENDS} \
			devel/desktop-file-utils \
			devel/py-tz${MODPY_FLAVOR} \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \
			sysutils/py-packaging${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			x11/gnome/libdazzle \
			x11/gtk+4,-guic

# required for running tests
# one failing test due to missing network
PORTHOME=		${WRKDIR}

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}
	ln -s com.github.geigi.cozy ${PREFIX}/bin/cozy

.include <bsd.port.mk>
