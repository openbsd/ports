# $OpenBSD: Makefile,v 1.6 2009/08/11 19:52:51 landry Exp $

COMMENT=	Thunar additional thumbnailers plugin

XFCE_VERSION=	0.3.2
THUNAR_PLUGIN=	thunar-thumbnailers
PKGNAME=	${DISTNAME}p2

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
