# $OpenBSD: Makefile,v 1.7 2007/05/28 19:53:07 steven Exp $
PKG_ARCH=	*

COMMENT=	"icon theme for xfce4"
V=		4.4.1
DISTNAME=	xfce4-icon-theme-${V}
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
USE_LIBTOOL=	No
MODULES=

RUN_DEPENDS=	:xfce4-panel->=4.4.1:x11/xfce4/xfce4-panel

.include <bsd.port.mk>
