# $OpenBSD: Makefile,v 1.12 2011/01/18 20:57:07 landry Exp $

COMMENT=	Thunar additional thumbnailers plugin

XFCE_VERSION=	0.4.1
XFCE_GOODIE=	thunar-thumbnailers
REVISION=	2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/xfce4
XFCE_NO_SRC=	Yes
CONFIGURE_ARGS+=--enable-ffmpeg

# can also optionally use math/grace, graphics/dcraw and print/texlive

RUN_DEPENDS=	x11/xfce4/thunar \
		x11/xfce4/thunar-vfs \
		graphics/ffmpegthumbnailer \
		graphics/ImageMagick \
		archivers/unzip \
		misc/shared-mime-info
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
