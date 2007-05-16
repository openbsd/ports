# $OpenBSD: Makefile,v 1.6 2007/05/16 14:22:41 steven Exp $
PKG_ARCH=	*

COMMENT=	"window decoration themes for xfwm4"
V=		4.4.1
DISTNAME=	xfwm4-themes-${V}

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_LIBTOOL=	No
MODULES=

RUN_DEPENDS=	:xfwm4->=4.4.1:x11/xfce4/xfwm4

.include <bsd.port.mk>
