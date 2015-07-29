# $OpenBSD: Makefile,v 1.51 2015/07/29 12:13:17 ajacoutot Exp $

COMMENT=	GTK+ client for the Music Player Daemon

MODPY_EGG_VERSION=1.7a2
# git describe (v1.7a2-62-gace5e33)
DISTNAME=	sonata-${MODPY_EGG_VERSION}262
EPOCH=		0
REVISION=	1

CATEGORIES=	audio

GH_COMMIT=	ace5e33f3e4e587c34476ac0f50fe66fc3a26c96
GH_ACCOUNT=	multani
GH_PROJECT=	sonata

HOMEPAGE=	http://www.nongnu.org/sonata/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=	devel/gettext-tools

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
