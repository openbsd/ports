# $OpenBSD: Makefile,v 1.4 2009/04/11 14:06:46 ajacoutot Exp $

COMMENT=	convert media files to Vorbis, Theora and Dirac

MODPY_EGG_VERSION=0.3.2
DISTNAME=	oggconvert-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME}p0

CATEGORIES=	multimedia sysutils

HOMEPAGE=	http://oggconvert.tristanb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/${MODPY_EGG_VERSION}/ \
		http://humppa.nl/distfiles/

MODULES=	lang/python

USE_X11=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

BUILD_DEPENDS=	::multimedia/gstreamer-0.10/py-gstreamer
RUN_DEPENDS=	::multimedia/gstreamer-0.10/py-gstreamer \
		:desktop-file-utils-*:devel/desktop-file-utils \
		::multimedia/gstreamer-0.10/plugins-base,-ogg \
		::multimedia/gstreamer-0.10/plugins-base,-vorbis \
		::multimedia/gstreamer-0.10/plugins-base,-theora \
		::multimedia/gstreamer-0.10/plugins-good,-jpeg \
		::multimedia/gstreamer-0.10/plugins-good,-taglib \
		::multimedia/gstreamer-0.10/plugins-ugly,-mad \
		::multimedia/gstreamer-0.10/plugins-ugly,-mpeg2 \
		:gstreamer-ffmpeg->=0.10.5:multimedia/gstreamer-0.10/plugins-ffmpeg

pre-configure:
	${SUBST_CMD} ${WRKSRC}/oggconvert

.include <bsd.port.mk>
