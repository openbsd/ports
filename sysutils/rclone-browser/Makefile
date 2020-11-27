# $OpenBSD: Makefile,v 1.1.1.1 2020/11/27 14:19:55 solene Exp $

COMMENT =	file browser for rclone-supported remotes

GH_ACCOUNT =	kapitainsky
GH_PROJECT =	RcloneBrowser
GH_TAGNAME =	1.8.0
PKGNAME =	rclone-browser-${GH_TAGNAME}

CATEGORIES =	sysutils x11
MAINTAINER =	Solene Rapenne <solene@perso.pw>

# MIT
PERMIT_PACKAGE =Yes

MODULES =	devel/cmake \
		x11/qt5

RUN_DEPENDS =	devel/desktop-file-utils \
		sysutils/rclone \
		x11/gtk+3,-guic

WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Widgets c m
WANTLIB += ${COMPILER_LIBCXX}

NO_TEST =	Yes


.include <bsd.port.mk>
