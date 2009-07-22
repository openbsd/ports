# $OpenBSD: Makefile,v 1.1.1.1 2009/07/22 20:43:43 landry Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.2.4
XFCE_GOODIE =	thunar-archive-plugin
PKGNAME =	${DISTNAME:S/-plugin//}
MASTER_SITES =	${MASTER_SITE_BERLIOS:=xfce-goodies/}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS =	::x11/xfce4/thunar \
		:xarchiver-*|file-roller-*|kdeutils-*:x11/xarchiver

.include <bsd.port.mk>
