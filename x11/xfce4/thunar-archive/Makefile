# $OpenBSD: Makefile,v 1.15 2013/03/11 11:46:17 espie Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.3.0
THUNAR_PLUGIN =	thunar-archive-plugin
REVISION=	3

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS =	x11/xfce4/thunar \
		xarchiver-*|file-roller-*|kdeutils-*:x11/xarchiver

LIB_DEPENDS +=	x11/xfce4/exo

.include <bsd.port.mk>
