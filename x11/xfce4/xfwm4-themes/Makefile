# $OpenBSD: Makefile,v 1.11 2008/11/06 15:34:47 landry Exp $
PKG_ARCH=	*

COMMENT=	window decoration themes for xfwm4

XFCE_PROJECT=	xfwm4-themes

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
