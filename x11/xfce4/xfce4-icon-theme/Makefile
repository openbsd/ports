# $OpenBSD: Makefile,v 1.31 2018/06/29 22:16:36 espie Exp $

PKG_ARCH=	*

COMMENT=	Xfce4 icon theme

XFCE_ARTWORK=	xfce4-icon-theme
XFCE_VERSION=	4.4.3
REVISION=	13

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	textproc/intltool \
		x11/xfce4
XFCE_NO_SRC=	Yes

MODXFCE_ICON_CACHE=	Yes

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=	x11/tango-icon-theme

.include <bsd.port.mk>
