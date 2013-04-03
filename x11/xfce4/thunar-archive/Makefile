# $OpenBSD: Makefile,v 1.17 2013/04/03 06:20:50 ajacoutot Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.3.0
THUNAR_PLUGIN =	thunar-archive-plugin
REVISION=	5

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

BUILD_DEPENDS =	x11/xfce4/thunar

RUN_DEPENDS =	x11/xfce4/thunar \
		xarchiver-*|file-roller-*|kdeutils-*:x11/xarchiver

LIB_DEPENDS +=	x11/xfce4/exo

.include <bsd.port.mk>
