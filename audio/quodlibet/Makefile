# $OpenBSD: Makefile,v 1.20 2017/11/14 20:32:38 sthen Exp $

COMMENT=	audio player and tagger for GTK+ with regex support

MODPY_EGG_VERSION= 3.9.0
DISTNAME=	quodlibet-${MODPY_EGG_VERSION}

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
		devel/py-gobject3${MODPY_FLAVOR}>=3.14 \
		graphics/py-cairo${MODPY_FLAVOR}>=1.8 \
		textproc/py-feedparser${MODPY_FLAVOR} \
		x11/dbus-python${MODPY_FLAVOR}

# py2 only
RUN_DEPENDS+=	devel/py-faulthandler \
		devel/py-futures

# others
RUN_DEPENDS+=	devel/desktop-file-utils \
		devel/libsoup \
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
