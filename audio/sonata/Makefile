# $OpenBSD: Makefile,v 1.46 2014/09/10 11:58:47 ajacoutot Exp $

COMMENT=	GTK+ client for the Music Player Daemon

MODPY_EGG_VERSION=1.7a2
# git describe (v1.7a2.r58.g2c533b3)
DISTNAME=	sonata-${MODPY_EGG_VERSION}258
EPOCH=		0

CATEGORIES=	audio

GH_COMMIT=	2c533b3a05d05135ff955d7ddae26a8c6f632c80
GH_ACCOUNT=	multani
GH_PROJECT=	sonata

HOMEPAGE=	https://github.com/multani/sonata

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

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

.include <bsd.port.mk>
