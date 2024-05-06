COMMENT =	bittorrent client

DISTNAME =		deluge-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.1.1
REVISION =		0

CATEGORIES =	net

HOMEPAGE =	https://www.deluge-torrent.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =			https://ftp.osuosl.org/pub/deluge/source/${MODPY_EGG_VERSION:R}/

EXTRACT_SUFX =		.tar.xz

MODULES =		lang/python \
			textproc/intltool
MODPY_PYTEST =		Yes
# skip some tests which segfault (seem to be most/all Gtk-related)
MODPY_PYTEST_ARGS =	-v \
			--ignore deluge/plugins/Stats/deluge_stats/tests/test_stats.py \
			--ignore deluge/tests/test_files_tab.py \
			--ignore deluge/tests/test_torrentview.py \
			--ignore deluge/tests/test_ui_entry.py
# needs fixing up for MODPY_PYBUILD; doesn't install
# share/appdata/deluge.appdata.xml
# share/applications/deluge.desktop
MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS =		devel/py-wheel${MODPY_FLAVOR} \
			devel/py-xdg${MODPY_FLAVOR} \
			net/libtorrent-rasterbar \
			textproc/py-chardet${MODPY_FLAVOR}
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/py-rencode${MODPY_FLAVOR} \
			devel/py-setproctitle${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR} \
			devel/py-xdg${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			net/libtorrent-rasterbar \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR} \
			x11/gtk+3 \
			x11/gtk+4,-guic

PORTHOME=		${WRKSRC}

.include <bsd.port.mk>
