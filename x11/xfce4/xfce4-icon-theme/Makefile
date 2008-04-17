# $OpenBSD: Makefile,v 1.11 2008/04/17 09:00:24 landry Exp $
PKG_ARCH=	*

COMMENT=	icon theme for xfce4
V=		4.4.2
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

#not yet
#RUN_DEPENDS=	::x11/gnome/librsvg,no_gnome

.include <bsd.port.mk>
