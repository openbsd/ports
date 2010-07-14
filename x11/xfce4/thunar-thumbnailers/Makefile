# $OpenBSD: Makefile,v 1.9 2010/07/14 11:48:13 landry Exp $

COMMENT=	Thunar additional thumbnailers plugin

XFCE_VERSION=	0.4.1
XFCE_GOODIE=	thunar-thumbnailers
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/xfce4
XFCE_NO_SRC=	Yes
CONFIGURE_ARGS+=--enable-ffmpeg

# can also optionally use math/grace, graphics/dcraw and print/texlive

RUN_DEPENDS=	::x11/xfce4/thunar \
		::graphics/ffmpegthumbnailer \
		::graphics/ImageMagick \
		::archivers/unzip \
		::misc/shared-mime-info
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
