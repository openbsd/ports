# $OpenBSD: Makefile,v 1.61 2020/11/14 17:15:43 ajacoutot Exp $

COMMENT=	GTK+ client for the Music Player Daemon

MODPY_EGG_VERSION=1.7b1
DISTNAME=	sonata-${MODPY_EGG_VERSION}
EPOCH=		0
REVISION=	4

CATEGORIES=	audio

GH_COMMIT=	34c00d3b830904b5ad3ef0f131ea9c0a17ba7e34
GH_ACCOUNT=	multani
GH_PROJECT=	sonata

HOMEPAGE=	http://www.nongnu.org/sonata/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	audio/py-mpd2${MODPY_FLAVOR} \
		audio/py-tagpy${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/xdg-utils \
		x11/dbus-python${MODPY_FLAVOR}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/sonata/pixmaps/sonata.png \
		${PREFIX}/share/pixmaps
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rm -r ${PREFIX}/share/{man,sonata}

.include <bsd.port.mk>
