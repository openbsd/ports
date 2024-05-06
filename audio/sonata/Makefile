COMMENT=	GTK+ client for the Music Player Daemon

MODPY_EGG_VERSION=1.7.0
GH_TAGNAME=	v${MODPY_EGG_VERSION}
GH_ACCOUNT=	multani
GH_PROJECT=	sonata
DISTNAME=	sonata-${MODPY_EGG_VERSION}
EPOCH=		1
REVISION=	5

CATEGORIES=	audio

HOMEPAGE=	http://www.nongnu.org/sonata/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	audio/py-mpd2${MODPY_FLAVOR} \
		audio/py-tagpy${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/xdg-utils \
		x11/dbus-python${MODPY_FLAVOR}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

# From c4ed69eed8dfdea3f958b2c0d93b79e70522009a Mon Sep 17 00:00:00 2001
# From: Jonathan Ballet <jon@multani.info>
# Date: Sun, 11 Apr 2021 17:03:09 +0200
# Subject: [PATCH] Remove the "lyricswiki" plugin, as the website shutdown last year (#119)
post-extract:
	rm ${WRKSRC}/sonata/plugins/lyricwiki.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/sonata/pixmaps/sonata.png \
		${PREFIX}/share/pixmaps
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rm -r ${PREFIX}/share/{man,sonata}

.include <bsd.port.mk>
