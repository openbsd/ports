# $OpenBSD: Makefile,v 1.1.1.1 2014/05/23 21:16:05 sthen Exp $

COMMENT=	audio player and tagger for GTK+ with regex support

MODPY_EGG_VERSION= 3.1.1
DISTNAME=	quodlibet-${MODPY_EGG_VERSION}

CATEGORIES=	audio

HOMEPAGE=	http://quodlibet.googlecode.com/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://bitbucket.org/lazka/quodlibet-files/raw/default/releases/

MODULES=	devel/gettext \
		lang/python
RUN_DEPENDS=	audio/py-mutagen \
		devel/desktop-file-utils \
		devel/py-gobject3 \
		graphics/py-cairo \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-ugly \
		multimedia/xine-lib \
		x11/gtksourceview3 \
		x11/gtk+2,-guic

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/intltool
MODPY_ADJ_FILES= *py

do-regress:
	cd ${WRKSRC}; ${MODPY_BIN} ./setup.py test

.include <bsd.port.mk>
