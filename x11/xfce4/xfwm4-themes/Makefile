# $OpenBSD: Makefile,v 1.12 2009/04/28 19:40:10 landry Exp $
PKG_ARCH=	*

COMMENT=	Xfwm4 window decoration themes

XFCE_PROJECT=	xfwm4-themes
XFCE_VERSION=	4.6.0
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://www.xfce.org/projects/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
XFCE_NO_SRC=	Yes

RUN_DEPENDS=	::x11/xfce4/xfwm4

.include <bsd.port.mk>
