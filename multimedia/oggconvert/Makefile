# $OpenBSD: Makefile,v 1.19 2016/05/07 22:16:58 naddy Exp $

COMMENT=	convert media files to Vorbis, Theora and Dirac

MODPY_EGG_VERSION=0.3.3
REVISION=	3
DISTNAME=	oggconvert-${MODPY_EGG_VERSION}

CATEGORIES=	multimedia sysutils

HOMEPAGE=	http://oggconvert.tristanb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/${MODPY_EGG_VERSION}/ \
		https://distfiles.nl/

MODULES=	lang/python

NO_TEST=	Yes
PKG_ARCH=	*

BUILD_DEPENDS=	devel/gettext-tools \
		multimedia/gstreamer-0.10/py-gstreamer
RUN_DEPENDS=	multimedia/gstreamer-0.10/py-gstreamer \
		devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg

pre-configure:
	${SUBST_CMD} ${WRKSRC}/oggconvert

.include <bsd.port.mk>
