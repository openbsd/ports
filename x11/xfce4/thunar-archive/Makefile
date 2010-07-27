# $OpenBSD: Makefile,v 1.5 2010/07/27 12:58:42 landry Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.2.4
THUNAR_PLUGIN =	thunar-archive-plugin
REVISION =	2

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
