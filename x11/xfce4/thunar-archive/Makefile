# $OpenBSD: Makefile,v 1.16 2013/03/29 15:39:56 jasper Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.3.0
THUNAR_PLUGIN =	thunar-archive-plugin
REVISION=	4

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS =	x11/xfce4/thunar \
		xarchiver-*|file-roller-*|kdeutils-*:x11/xarchiver

LIB_DEPENDS +=	x11/xfce4/exo

.include <bsd.port.mk>
