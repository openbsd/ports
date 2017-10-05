# $OpenBSD: Makefile,v 1.7 2017/10/05 19:55:07 rsadowski Exp $

COMMENT =	management tool for sensitive data

CATEGORIES =	security

GH_ACCOUNT =	keepassxreboot
GH_PROJECT =	keepassxc
GH_TAGNAME =	2.2.1

HOMEPAGE =	https://keepassxc.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2 or GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5X11Extras X11 Xi Xtst c gcrypt
WANTLIB += gpg-error m z

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

FLAVORS =	yubikey
FLAVOR ?=

.if ${FLAVOR:Myubikey}
LIB_DEPENDS +=		security/yubico/yubico-c \
			security/yubico/yubikey-personalization
CONFIGURE_ARGS +=	-DWITH_XC_YUBIKEY=ON
WANTLIB += yubikey ykpers-1
.endif

post-patch:
	cd ${WRKSRC}/src/; sed -i -e 's/Q_OS_LINUX/Q_OS_UNIX/g' \
		core/ScreenLockListenerPrivate.cpp \
		gui/MainWindow.cpp \
		main.cpp

.include <bsd.port.mk>
