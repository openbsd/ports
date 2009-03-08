# $OpenBSD: Makefile,v 1.17 2009/03/08 17:17:45 landry Exp $
PKG_ARCH=	*

COMMENT=	icon theme for xfce4

XFCE_PROJECT=	xfce4-icon-theme
XFCE_VERSION=	4.4.3
PKGNAME=	${DISTNAME}p1

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
