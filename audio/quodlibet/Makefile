# $OpenBSD: Makefile,v 1.28 2019/05/20 22:15:01 naddy Exp $

COMMENT=	audio player and tagger for GTK+ with regex support

MODPY_EGG_VERSION= 4.2.1
DISTNAME=	quodlibet-${MODPY_EGG_VERSION}
PORTROACH=	skipv:release-${MODPY_EGG_VERSION}

CATEGORIES=	audio

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	https://quodlibet.readthedocs.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/quodlibet/quodlibet/releases/download/release-${MODPY_EGG_VERSION}/

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
RUN_DEPENDS=	audio/py-mutagen${MODPY_FLAVOR}>=1.34 \
		devel/py-gobject3${MODPY_FLAVOR}>=3.18 \
		graphics/py-cairo${MODPY_FLAVOR}>=1.8 \
		textproc/py-feedparser${MODPY_FLAVOR} \
		x11/dbus-python${MODPY_FLAVOR}

# others
RUN_DEPENDS+=	devel/desktop-file-utils \
		devel/libsoup \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav \
		multimedia/xine-lib \
		x11/gtksourceview3 \
		x11/gtk+3,-guic

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/gettext,-runtime \
		devel/gettext,-tools
MODPY_ADJ_FILES= *py

MODPY_DISTUTILS_INSTALLARGS= --mandir=${PREFIX}/man

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./setup.py test

.include <bsd.port.mk>
