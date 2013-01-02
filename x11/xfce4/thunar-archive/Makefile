# $OpenBSD: Makefile,v 1.14 2013/01/02 17:12:22 landry Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.3.0
THUNAR_PLUGIN =	thunar-archive-plugin
REVISION=	3

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS =	x11/xfce4/thunar \
		xarchiver-*|file-roller-*|kdeutils-*:x11/xarchiver

LIB_DEPENDS +=	x11/xfce4/exo

.include <bsd.port.mk>
