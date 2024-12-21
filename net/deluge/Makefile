COMMENT =	bittorrent client

DISTNAME =		deluge-${MODPY_DISTV}
MODPY_DISTV =	2.1.1
REVISION =		1

CATEGORIES =	net

HOMEPAGE =	https://www.deluge-torrent.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =			https://ftp.osuosl.org/pub/deluge/source/${MODPY_DISTV:R}/

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
BUILD_DEPENDS =		devel/py-wheel \
			devel/py-xdg \
			net/libtorrent-rasterbar \
			textproc/py-chardet
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-gobject3 \
			devel/py-rencode \
			devel/py-setproctitle \
			devel/py-twisted \
			devel/py-xdg \
			graphics/py-Pillow \
			net/libtorrent-rasterbar \
			textproc/py-chardet \
			www/py-mako \
			x11/gtk+3 \
			x11/gtk+4,-guic

PORTHOME=		${WRKSRC}

.include <bsd.port.mk>
