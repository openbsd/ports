# $OpenBSD: Makefile,v 1.30 2015/03/27 08:16:24 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	Xfce4 icon theme

XFCE_ARTWORK=	xfce4-icon-theme
XFCE_VERSION=	4.4.3
REVISION=	12

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	textproc/intltool \
		x11/xfce4
XFCE_NO_SRC=	Yes

MODXFCE_ICON_CACHE=	Yes

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=	x11/tango-icon-theme

.include <bsd.port.mk>
