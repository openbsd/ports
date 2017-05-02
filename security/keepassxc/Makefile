# $OpenBSD: Makefile,v 1.2 2017/05/02 20:41:04 rsadowski Exp $

COMMENT =	management tool for sensitive data
REVISION =	0

CATEGORIES =	security

GH_ACCOUNT =	keepassxreboot
GH_PROJECT =	keepassxc
GH_TAGNAME =	2.1.4

HOMEPAGE =	https://keepassxc.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5X11Extras
WANTLIB += c gcrypt gpg-error m z
WANTLIB += X11 Xi Xtst

MODULES =	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	security/libgcrypt \
		x11/qt5/qtx11extras  # needed for auto-type

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS=	-DWITH_GUI_TESTS=ON \
		-DWITH_XC_HTTP=ON \
		-DWITH_XC_AUTOTYPE=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
