# $OpenBSD: Makefile,v 1.42 2014/03/09 22:04:37 ajacoutot Exp $

COMMENT=	GTK+ client for the Music Player Daemon

MODPY_EGG_VERSION=1.7a2
#DISTNAME=	sonata-${MODPY_EGG_VERSION}
DISTNAME=	sonata-1.7.1.20140207
CATEGORIES=	audio
REVISION=	0

HOMEPAGE=	http://sonata.berlios.de/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://distfiles.bsdfrog.org/
#MASTER_SITES=	${MASTER_SITE_BERLIOS:=sonata/}

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	audio/py-mpd2${MODPY_FLAVOR} \
		audio/py-tagpy${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/xdg-utils \
		x11/dbus-python${MODPY_FLAVOR}

# pygobject introspection for gtk+3
RUN_DEPENDS +=	x11/gtk+3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/sonata/pixmaps/sonata.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
