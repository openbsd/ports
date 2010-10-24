# $OpenBSD: Makefile,v 1.10 2010/10/24 21:27:41 ajacoutot Exp $

COMMENT=	convert media files to Vorbis, Theora and Dirac

MODPY_EGG_VERSION=0.3.2
DISTNAME=	oggconvert-${MODPY_EGG_VERSION}
REVISION =	3

CATEGORIES=	multimedia sysutils

HOMEPAGE=	http://oggconvert.tristanb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/${MODPY_EGG_VERSION}/ \
		http://distfiles.nl/

MODULES=	lang/python

NO_REGRESS=	Yes
PKG_ARCH=	*

BUILD_DEPENDS=	::multimedia/gstreamer-0.10/py-gstreamer
RUN_DEPENDS=	::multimedia/gstreamer-0.10/py-gstreamer \
		:desktop-file-utils-*:devel/desktop-file-utils \
		::multimedia/gstreamer-0.10/plugins-base \
		::multimedia/gstreamer-0.10/plugins-good \
		::multimedia/gstreamer-0.10/plugins-ugly \
		:gstreamer-ffmpeg->=0.10.5:multimedia/gstreamer-0.10/plugins-ffmpeg

pre-configure:
	${SUBST_CMD} ${WRKSRC}/oggconvert

.include <bsd.port.mk>
