# $OpenBSD: Makefile,v 1.3 2008/07/08 11:32:57 landry Exp $

COMMENT=	additional thumbnailers for Thunar

XFCE_VERSION=	0.3.2
XFCE_GOODIE=	thunar-thumbnailers

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/xfce4
XFCE_NO_SRC=	Yes
CONFIGURE_ARGS+=--enable-ffmpeg

RUN_DEPENDS=	::x11/xfce4/thunar \
		::graphics/ffmpegthumbnailer \
		::graphics/ImageMagick \
		::archivers/unzip \
		::misc/shared-mime-info
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
