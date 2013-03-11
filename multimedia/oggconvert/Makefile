# $OpenBSD: Makefile,v 1.16 2013/03/11 11:35:44 espie Exp $

COMMENT=	convert media files to Vorbis, Theora and Dirac

MODPY_EGG_VERSION=0.3.3
REVISION=	2
DISTNAME=	oggconvert-${MODPY_EGG_VERSION}

CATEGORIES=	multimedia sysutils

HOMEPAGE=	http://oggconvert.tristanb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/${MODPY_EGG_VERSION}/ \
		http://distfiles.nl/

MODULES=	lang/python

NO_TEST=	Yes
PKG_ARCH=	*

BUILD_DEPENDS=	multimedia/gstreamer-0.10/py-gstreamer
RUN_DEPENDS=	multimedia/gstreamer-0.10/py-gstreamer \
		devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-base \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ugly \
		multimedia/gstreamer-0.10/plugins-ffmpeg>=0.10.5

pre-configure:
	${SUBST_CMD} ${WRKSRC}/oggconvert

.include <bsd.port.mk>
