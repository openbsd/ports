# $OpenBSD: Makefile,v 1.23 2019/07/12 20:47:57 sthen Exp $

COMMENT=	convert media files to Vorbis, Theora and Dirac

MODPY_EGG_VERSION=0.3.3
REVISION=	4
DISTNAME=	oggconvert-${MODPY_EGG_VERSION}

CATEGORIES=	multimedia sysutils

HOMEPAGE=	http://oggconvert.tristanb.net/

# LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/${MODPY_EGG_VERSION}/ \
		https://distfiles.nl/

MODULES=	lang/python

NO_TEST=	Yes

BUILD_DEPENDS=	devel/gettext,-tools \
		multimedia/gstreamer-0.10/py-gstreamer
RUN_DEPENDS=	multimedia/gstreamer-0.10/py-gstreamer \
		devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg

pre-configure:
	${SUBST_CMD} ${WRKSRC}/oggconvert

.include <bsd.port.mk>
