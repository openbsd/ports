# $OpenBSD: Makefile,v 1.25 2011/05/19 14:43:17 ajacoutot Exp $
PKG_ARCH=	*

COMMENT=	Xfce4 icon theme

XFCE_ARTWORK=	xfce4-icon-theme
XFCE_VERSION=	4.4.3
REVISION=	8

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	textproc/intltool \
		x11/xfce4
XFCE_NO_SRC=	Yes

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=	x11/tango-icon-theme

.include <bsd.port.mk>
