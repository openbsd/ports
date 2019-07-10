# $OpenBSD: Makefile,v 1.6 2019/07/10 21:01:27 tj Exp $

COMMENT =	bittorrent client

DISTNAME =		deluge-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.3.15
REVISION =		3

CATEGORIES =	net

HOMEPAGE =	https://www.deluge-torrent.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://ftp.osuosl.org/pub/deluge/source/

EXTRACT_SUFX =		.tar.xz

MODULES =		lang/python \
			textproc/intltool
MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS =		devel/py-xdg \
			net/libtorrent-rasterbar \
			textproc/py-chardet
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-twisted \
			devel/py-xdg \
			graphics/py-Pillow \
			net/libtorrent-rasterbar \
			textproc/py-chardet \
			www/py-mako \
			x11/gtk+3,-guic \
			x11/py-gtk2

.include <bsd.port.mk>
