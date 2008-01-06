# $OpenBSD: Makefile,v 1.1.1.1 2008/01/06 20:19:11 landry Exp $

# $OpenBSD: Makefile,v 1.1.1.1 2008/01/06 20:19:11 landry Exp $

COMMENT=	additional thumbnailers for Thunar

V=		0.3.0
DISTNAME=	thunar-thumbnailers-$V
PKGNAME=	thunar-thumbnailers-plugin-$V

HOMEPAGE=	http://goodies.xfce.org/projects/thunar-plugins/thunar-thumbnailers
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/thunar-thumbnailers/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

CONFIGURE_ARGS+=--enable-ffmpeg

MODULES=
RUN_DEPENDS=	::x11/xfce4/thunar \
		::graphics/ffmpegthumbnailer \
		::graphics/ImageMagick \
		::archivers/unzip \
		::misc/shared-mime-info
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
