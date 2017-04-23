# $OpenBSD: Makefile,v 1.1.1.1 2017/04/23 21:27:58 rsadowski Exp $

COMMENT =	management tool for sensitive data

CATEGORIES =	security

GH_ACCOUNT =	keepassxreboot
GH_PROJECT =	keepassxc
GH_TAGNAME =	2.1.4

HOMEPAGE =	https://keepassxc.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += c gcrypt gpg-error m z

MODULES =	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	security/libgcrypt

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS=	-DWITH_GUI_TESTS=ON \
		-DWITH_XC_HTTP=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
