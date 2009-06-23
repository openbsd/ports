# $OpenBSD: Makefile,v 1.18 2009/06/23 20:14:28 landry Exp $
PKG_ARCH=	*

COMMENT=	Xfce4 icon theme

XFCE_PROJECT=	xfce4-icon-theme
XFCE_VERSION=	4.4.3
PKGNAME=	${DISTNAME}p2

HOMEPAGE=	http://www.xfce.org/projects
MASTER_SITES=	http://www.xfce.org/archive/xfce-${XFCE_VERSION}/src/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	textproc/intltool \
		x11/xfce4
XFCE_NO_SRC=	Yes

.include <bsd.port.mk>
