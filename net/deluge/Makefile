# $OpenBSD: Makefile,v 1.8 2020/02/06 20:00:22 rsadowski Exp $

COMMENT =	bittorrent client

DISTNAME =		deluge-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.0.3

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
BUILD_DEPENDS =		devel/py-wheel,python3 \
			devel/py-xdg,python3 \
			net/libtorrent-rasterbar \
			textproc/py-chardet,python3
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-gobject3,python3 \
			devel/py-rencode,python3 \
			devel/py-setproctitle,python3 \
			devel/py-twisted,python3 \
			devel/py-xdg,python3 \
			graphics/py-Pillow,python3 \
			net/libtorrent-rasterbar \
			textproc/py-chardet,python3 \
			www/py-mako,python3 \
			x11/gtk+3,-guic \
			x11/py-gtk2

.include <bsd.port.mk>
