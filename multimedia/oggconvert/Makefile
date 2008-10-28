# $OpenBSD: Makefile,v 1.2 2008/10/28 14:00:09 jasper Exp $

COMMENT=	convert media files to Vorbis, Theora and Dirac

DISTNAME=	oggconvert-0.3.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	multimedia sysutils

HOMEPAGE=	http://oggconvert.tristanb.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/ \
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
		::multimedia/gstreamer-0.10/plugins-bad,-xvid \
		::multimedia/gstreamer-0.10/plugins-ugly,-mad \
		::multimedia/gstreamer-0.10/plugins-ugly,-mpeg2

post-patch:
	@perl -pi -e 's,/usr/bin/python,${MODPY_BIN},' ${WRKSRC}/oggconvert

.include <bsd.port.mk>
