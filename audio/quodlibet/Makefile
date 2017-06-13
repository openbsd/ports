# $OpenBSD: Makefile,v 1.19 2017/06/13 07:43:55 ajacoutot Exp $

COMMENT=	audio player and tagger for GTK+ with regex support

MODPY_EGG_VERSION= 3.8.1
DISTNAME=	quodlibet-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	audio

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	https://quodlibet.readthedocs.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://bitbucket.org/lazka/quodlibet-files/raw/default/releases/

MODULES=	lang/python \
		textproc/intltool

# py2/3
RUN_DEPENDS=	audio/py-mutagen${MODPY_FLAVOR}>=1.32 \
		devel/py-gobject3${MODPY_FLAVOR} \
		graphics/py-cairo${MODPY_FLAVOR} \
		textproc/py-feedparser${MODPY_FLAVOR} \
		x11/dbus-python${MODPY_FLAVOR}

# not for python 3
RUN_DEPENDS+=	devel/py-futures

# others
RUN_DEPENDS+=	devel/desktop-file-utils \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav \
		multimedia/xine-lib \
		x11/gtksourceview3 \
		x11/gtk+3,-guic

BUILD_DEPENDS=	${RUN_DEPENDS}
MODPY_ADJ_FILES= *py

MODPY_DISTUTILS_INSTALLARGS= --mandir=${PREFIX}/man

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./setup.py test

.include <bsd.port.mk>
