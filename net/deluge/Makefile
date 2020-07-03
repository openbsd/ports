# $OpenBSD: Makefile,v 1.10 2020/07/03 21:12:59 sthen Exp $

COMMENT =	bittorrent client

DISTNAME =		deluge-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.0.3
REVISION =		1

CATEGORIES =	net

HOMEPAGE =	https://www.deluge-torrent.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://ftp.osuosl.org/pub/deluge/source/2.0/

EXTRACT_SUFX =		.tar.xz

MODULES =		lang/python \
			textproc/intltool
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
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
			x11/gtk+3,-guic

.include <bsd.port.mk>
